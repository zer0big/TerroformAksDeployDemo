resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "zeroaks-demo" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.system_node_count
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "DEV"
  }
}

# output "client_certificate" {
#   value     = azurerm_kubernetes_cluster.zeroaks-demo.kube_config.0.client_certificate
#   sensitive = true
# }

# output "kube_config" {
#   value     = azurerm_kubernetes_cluster.zeroaks-demo.kube_config_raw
#   sensitive = true
# }
