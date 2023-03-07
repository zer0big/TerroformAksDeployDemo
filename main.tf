terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# resource "azurerm_resource_group" "rg" {
#   name     = "rg-terraform-aks"
#   location = "Korea Central"
# }