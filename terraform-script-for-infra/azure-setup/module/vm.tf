############################################## Creation for NSG #######################################################

resource "azurerm_network_security_group" "azure_nsg" {
  count               = var.vm_count
  name                = "${var.prefix}-nsg-${count.index + 1}"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name

  security_rule {
    name                       = "azure_nsg"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = var.env
  }
}

########################################## Create Public IP and Network Interface #############################################

resource "azurerm_public_ip" "public_ip" {
  count               = var.vm_count
  name                = "${var.prefix}-ip-${count.index + 1}"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location            = azurerm_resource_group.aks_rg.location
  allocation_method   = var.static_dynamic[0]

  sku = "Standard"   ### Basic, For Availability Zone to be Enabled the SKU of Public IP must be Standard  
  zones = var.availability_zone

  tags = {
    environment = var.env
  }
}

resource "azurerm_network_interface" "vnet_interface" {
  count               = var.vm_count
  name                = "${var.prefix}-nic-${count.index + 1}"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name

  ip_configuration {
    name                          = "${var.prefix}-ip-configuration-${count.index + 1}"
    subnet_id                     = azurerm_subnet.aks_subnet.id
    private_ip_address_allocation = var.static_dynamic[1]
    public_ip_address_id = azurerm_public_ip.public_ip[count.index].id
  }
  
  tags = {
    environment = var.env
  }
}

############################################ Attach NSG to Network Interface #####################################################

resource "azurerm_network_interface_security_group_association" "nsg_nic" {
  count                     = var.vm_count
  network_interface_id      = azurerm_network_interface.vnet_interface[count.index].id
  network_security_group_id = azurerm_network_security_group.azure_nsg[count.index].id

  depends_on = [azurerm_virtual_network_gateway.vnetgtw]

}

######################################################## Create Azure VM ##########################################################

resource "azurerm_virtual_machine" "azure_vm" {
  count                 = var.vm_count
  name                  = "${var.prefix}-vm-${count.index + 1}"
  location              = azurerm_resource_group.aks_rg.location
  resource_group_name   = azurerm_resource_group.aks_rg.name
  network_interface_ids = [azurerm_network_interface.vnet_interface[count.index].id]
  vm_size               = var.vm_size
  zones                 = var.availability_zone

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = true

  #### Boot Diagnostics is Enable with managed storage account ########
  boot_diagnostics {
    enabled = true
    storage_uri = ""
  }

  storage_image_reference {
    publisher = "OpenLogic"
    offer     = "CentOS"
    sku       = "7_9-gen2"
    version   = "latest"
  }
  storage_os_disk {
    name              = "${var.prefix}-osdisk-${count.index + 1}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = var.disk_size_gb
  }
  os_profile {
    computer_name  = "${var.computer_name}-${count.index + 1}"
    admin_username = var.admin_username
    admin_password = var.admin_password
    custom_data    = filebase64("custom_data.sh") 
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  storage_data_disk {
    name              = "${var.prefix}-datadisk-${count.index + 1}"
    caching           = "ReadWrite"
    create_option     = "Empty"
    disk_size_gb      = var.extra_disk_size_gb
    lun               = 0
    managed_disk_type = "Standard_LRS"
  }
  tags = {
    environment = var.env
  }
}
