# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.rg_name}"
  location = "${var.location}"
}

# Create a vm
resource "azurerm_virtual_machine" "vm" {
  name                               = "${var.stack_name}"
  location                           = "${var.location}"
  resource_group_name                = azurerm_resource_group.rg.name
  network_interface_ids              = ["${azurerm_network_interface.ni.id}"]
  vm_size                            = "${var.vm_size}"
  delete_os_disk_on_termination      = true

  storage_image_reference               {
    publisher                        = "${var.vm_publisher}"
    offer                            = "${var.vm_offer}"
    sku                              = "${var.vm_sku}"
    version                          = "${var.vm_version}"
  }
  storage_os_disk                       {
    name                             = "${var.stack_name}-disk2"
    caching                          = "${var.caching}"
    create_option                    = "${var.create_option}"
    managed_disk_type                = "${var.managed_disk_type}"
  }
  os_profile                            {
    computer_name                    = "${var.computer_name}"
    admin_username                   = "${var.instance_admin}"
    admin_password                   = "${var.instance_password}"
  }

  os_profile_windows_config             {
  }
# os_profile_linux_config               {
#    disable_password_authentication = false
#  }
  tags =                                {
        environment                  = "${var.environment}"
        owner                        = "${var.owner}"
  }
}
resource "azurerm_public_ip" "public"   {
  name                               = "${var.stack_name}-ip"
  location                           = "${var.location}"
  resource_group_name                = azurerm_resource_group.rg.name
  allocation_method                  = "${var.allocation_method}"
  ip_version                         = "${var.ip_version}"
  tags = {
        environment                  = "${var.environment}"
        owner                        = "${var.owner}"
  }
}
