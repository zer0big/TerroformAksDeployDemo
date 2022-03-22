terraform {
  backend "azurerm" {
    resource_group_name  = "rg-aks-tfstate"
    storage_account_name = "sa4akstfstate"
    container_name       = "tfstatecont"
    key                  = "tfstate"
  }
}