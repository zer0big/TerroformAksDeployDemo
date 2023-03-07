resource "azurerm_container_registry" "zeroaks-demo" {
  name                = var.acr_name
  sku                 = "Standard"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_role_assignment" "enablePulling" {
  principal_id                     = azurerm_kubernetes_cluster.zeroaks-demo.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.zeroaks-demo.id
  skip_service_principal_aad_check = true
}