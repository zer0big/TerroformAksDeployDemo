variable "resource_group_name" {
  type        = string
  description = "Resource Group name in Microsoft Azure"
  default     = "RG-OSD2023-AKSDemo"
}

variable "location" {
  type        = string
  description = "Resources location in Microsoft Azure"
  default     = "Korea Central"
}

variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
  default     = 2
}

variable "cluster_name" {
  type        = string
  description = "AKS name in Microsoft Azure"
  default     = "osd2023KORzeroaksdemo"
}

variable "dns_prefix" {
  type        = string
  description = "DNS Prefix name of AKS"
  default     = "zeroaksdemo"
}

variable "acr_name" {
  type        = string
  description = "ACR name in Microsoft Azure"
  default     = "osd2023KORzeroacrdemo"
}

variable "log_analytics_workspace_name" {
  default = "osd2023KORlaw4aksdemo"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable "log_analytics_workspace_location" {
  default = "koreacentral"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}