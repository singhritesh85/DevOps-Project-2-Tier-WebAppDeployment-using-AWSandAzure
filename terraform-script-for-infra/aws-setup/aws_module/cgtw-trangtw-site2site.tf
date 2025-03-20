########################################## Customer Gateway ###############################################

resource "aws_customer_gateway" "customer_gtw" {
  bgp_asn    = 65000
  ip_address = var.ip_address_azure_vpn_gtw               ### Public IP Address of the Azure VPN Gateway
  type       = "ipsec.1"

  tags = {
    Name = "${var.vpc_name}-customer-gateway"
  }
}

############################################# Transit Gateway #############################################

resource "aws_ec2_transit_gateway" "TGW" {
  description                     = "transit gateway"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support                     = "enable"
  vpn_ecmp_support                = "enable"

  tags = {
    Name = "TGW-01"
  }
}

############################################## Transit Gateway Attachment1 #################################

resource "aws_ec2_transit_gateway_vpc_attachment" "TG_Attachment_01" {
  subnet_ids         = [aws_subnet.private_subnet[0].id, aws_subnet.private_subnet[1].id, aws_subnet.public_subnet[2].id]
  transit_gateway_id = aws_ec2_transit_gateway.TGW.id
  vpc_id             = aws_vpc.test_vpc.id

  tags = {
    Name = "TG-Attachment-01"
    Environment = var.env
  }
}

######################################### AWS Site-to-Site VPN ############################################

resource "aws_vpn_connection" "site2site_vpn" {
  transit_gateway_id  = aws_ec2_transit_gateway.TGW.id
  customer_gateway_id = aws_customer_gateway.customer_gtw.id
  type                = "ipsec.1"
  static_routes_only  = true
  
  tags = {
    Name = "${var.vpc_name}-site2site-vpn"
  }
}

################################### Transit Gateway Route Table Association ################################

#data "aws_ec2_transit_gateway_vpn_attachment" "vpn_attachment" {
#  transit_gateway_id = aws_ec2_transit_gateway.TGW.id
#  vpn_connection_id  = aws_vpn_connection.site2site_vpn.id
#}

resource "aws_ec2_transit_gateway_route" "tgw_default_route" {
  destination_cidr_block         = "10.224.0.0/12"
  transit_gateway_attachment_id  = aws_vpn_connection.site2site_vpn.transit_gateway_attachment_id
  transit_gateway_route_table_id = aws_ec2_transit_gateway.TGW.association_default_route_table_id
  blackhole                      = false
}

########################### Entry in Route of the Route Table of VPC, TG-Attachments and VPC CIDRs ###########################

resource "aws_route" "vpc_route1" {
  route_table_id            = aws_route_table.public_route_table.id
  destination_cidr_block    = "10.224.0.0/12"
  transit_gateway_id        = aws_ec2_transit_gateway.TGW.id
}

resource "aws_route" "vpc_route2" {
  route_table_id            = aws_route_table.private_route_table.id
  destination_cidr_block    = "10.224.0.0/12"
  transit_gateway_id  = aws_ec2_transit_gateway.TGW.id
}

