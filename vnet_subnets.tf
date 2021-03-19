resource "azurerm_virtual_network" "virtual-network" {
  name                = "${var.rg_name}-VirtualNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.rg_name}-SecurityGroup"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"

  security_rule {
    name                        = "ssh"
    priority                    = "100"
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "tcp"
    source_port_range           = "*"
    destination_port_range      = "22"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
  }

}

resource "azurerm_subnet" "subnet1" {
  name                            = "${var.rg_name}-Subnet1"
  resource_group_name             = "${var.rg_name}"
  virtual_network_name            = "${azurerm_virtual_network.virtual-network.name}"
  address_prefixes                = ["10.0.2.0/24"]
  #network_security_group_id       = "${azurerm_network_security_group.nsg.id}"
}


resource "azurerm_network_interface" "ni"  {
  name                            = "${var.stack_name}-nic"
  location                        = "${var.location}"
  resource_group_name             = "${var.rg_name}"

  ip_configuration                         {
    name                          = "Refactoring_config"
    subnet_id                     = "${azurerm_subnet.subnet1.id}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "${azurerm_public_ip.public.id}"
  }
  tags = {
        environment               = "${var.environment}"
        owner                     = "${var.owner}"
  }
}
























#