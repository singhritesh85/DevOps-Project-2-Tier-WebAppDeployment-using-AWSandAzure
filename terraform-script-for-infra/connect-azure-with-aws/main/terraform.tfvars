#################### Parameters for Local Network Gateway and Virtual Network Gateway Connection #########################

prefix = "mederma"
outbound_public_ip_vpn_gtw_tunnet_1 = "3.13.92.58"   ### Provide the Outbound Public IP for Virtual Network Gateway for Tunnet 1
outbound_public_ip_vpn_gtw_tunnet_2 = "3.19.82.99"   ### Provide the Outbound Public IP for Virtual Network Gateway for Tunnet 2
aws_vpc_cidr = ["172.19.0.0/16"]
shared_key_1 = "4XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXV"     ### Provide the Shared Key from Dowloaded configuration file for Tunnel 1
shared_key_2 = "3XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX0"     ### Provide the Shared Key from Dowloaded configuration file for Tunnel 2
virtual_network_gateway_id = "/subscriptions/51283936-af44-49c6-9a24-f1cbdc17915d/resourceGroups/aks-rg/providers/Microsoft.Network/virtualNetworkGateways/aks-VNGTW"

env = ["dev", "stage", "prod"]
