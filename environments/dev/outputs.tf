output "resource_group_name" {
  description = "Name of the platform resource group"
  value       = azurerm_resource_group.platform.name
}

output "resource_group_location" {
  description = "Location of the platform resource group"
  value       = azurerm_resource_group.platform.location
}

output "hub_vnet_name" {
  description = "Name of the hub virtual network"
  value       = module.networking.hub_vnet_name
}

output "spoke_vnet_name" {
  description = "Name of the spoke virtual network"
  value       = module.networking.spoke_vnet_name
}

output "management_subnet_id" {
  description = "ID of the management subnet"
  value       = module.networking.management_subnet_id
}

output "app_subnet_id" {
  description = "ID of the application subnet"
  value       = module.networking.app_subnet_id
}

output "private_endpoint_subnet_id" {
  description = "ID of the private endpoint subnet"
  value       = module.networking.private_endpoint_subnet_id
}

output "app_nsg_name" {
  description = "Name of the application network security group"
  value       = module.networking.app_nsg_name
}

output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  value       = module.monitoring.workspace_name
}

output "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace"
  value       = module.monitoring.workspace_id
}