#================vm configurations===========================

instance_admin                  = "testadmin"
instance_password               = "Password1234!"                                          #update password here
environment                     = "sandbox"
owner                           = "xxxxxx"
caching                         = "ReadWrite"
create_option                   = "FromImage"
managed_disk_type               = "Standard_LRS"
computer_name                   = "server"
allocation_method               = "Static"
ip_version                      = "IPv4"
keyvault_name                   = "minewkeyvault"
vm_offer                        = "windowsserverdotnet"
vm_publisher                    = "MicrosoftWindowsServer"
vm_sku                          = "ws2019-dotnetcore-2-2"
vm_version                      = "17763.737.1909062324"

#=================Provider credentials=======================

subscription_id                 = "a5943aef-1d26-43f3-814a-7015ff2b5483"
client_secret                   = "BA6BfsYYS0aNlI~VVlz-bdPjvNWbASgQf0"
client_id                       = "40c61de2-1afd-4d7a-9e23-76eebbcee953"
tenant_id                       = "5b973f99-77df-4beb-b27d-aa0c70b8482c"
