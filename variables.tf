terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
   features {}
   
   subscription_id = "a5943aef-1d26-43f3-814a-7015ff2b5483"
}
variable "rg_name"           {}
variable "location"          {}
variable "subscription_id"   {}
variable "client_id"         {}
variable "client_secret"     {}
variable "tenant_id"         {}
variable "stack_name"        {}
variable "vm_size"           {}
variable "instance_admin"    {}
variable "instance_password" {}
variable "vm_publisher"      {}
variable "vm_offer"          {}
variable "vm_sku"            {}
variable "vm_version"        {}
variable "environment"       {}
variable "owner"             {}
variable "caching"           {}
variable "create_option"     {}
variable "managed_disk_type" {}
variable "computer_name"     {}
variable "allocation_method" {}
variable "ip_version"        {}
variable "keyvault_name"     {}
