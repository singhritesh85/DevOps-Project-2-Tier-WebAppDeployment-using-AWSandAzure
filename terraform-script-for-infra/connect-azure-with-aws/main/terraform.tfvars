#################### Parameters for Local Network Gateway and Virtual Network Gateway Connection #########################

prefix = "mederma"
outbound_public_ip_vpn_gtw_tunnet_1 = "3.XXX.XXX.33"   ### Provide the Outbound Public IP for Virtual Network Gateway for Tunnet 1
outbound_public_ip_vpn_gtw_tunnet_2 = "18.XXX.XXX.111"   ### Provide the Outbound Public IP for Virtual Network Gateway for Tunnet 2
aws_vpc_cidr = ["172.19.0.0/16"]
shared_key_1 = "hXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXJ"     ### Provide the Shared Key from Dowloaded configuration file for Tunnel 1
shared_key_2 = "5XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXb"     ### Provide the Shared Key from Dowloaded configuration file for Tunnel 2
virtual_network_gateway_id = "/subscriptions/51283936-af44-49c6-9a24-f1cbdc17915d/resourceGroups/aks-rg/providers/Microsoft.Network/virtualNetworkGateways/aks-VNGTW"

env = ["dev", "stage", "prod"]
