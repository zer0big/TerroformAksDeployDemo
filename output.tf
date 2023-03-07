output "aks_id" {
  value = azurerm_kubernetes_cluster.zeroaks-demo.id
}
output "aks_fqdn" {
  value = azurerm_kubernetes_cluster.zeroaks-demo.fqdn
}
output "aks_node_rg" {
  value = azurerm_kubernetes_cluster.zeroaks-demo.node_resource_group
}