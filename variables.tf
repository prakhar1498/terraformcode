terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "infraautomation"
    
    workspaces {
      name = "infraautomation"
      }
  }  
}

# .terraformrc
credentials "app.terraform.io" {
  token = "yboKr56qzwqKXQ.atlasv1.BNJMUh1rxmlGw1zMn5ylt8RzYVF1Jzm2opDzALApXr0FDolKramy8yIOOgAnaFTHJVE"
}

provider "azurerm" {
   features {}
   
   subscription_id = "a5943aef-1d26-43f3-814a-7015ff2b5483"
}
variable "rg_name"           {}
variable "location"          {}
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
