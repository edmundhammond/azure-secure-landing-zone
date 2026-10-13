output "hub_vnet_name" {
  description = "Name of the hub virtual network"
  value       = azurerm_virtual_network.hub.name
}

output "hub_vnet_id" {
  description = "ID of the hub virtual network"
  value       = azurerm_virtual_network.hub.id
}

output "spoke_vnet_name" {
  description = "Name of the spoke virtual network"
  value       = azurerm_virtual_network.spoke.name
}

output "spoke_vnet_id" {
  description = "ID of the spoke virtual network"
  value       = azurerm_virtual_network.spoke.id
}

output "management_subnet_id" {
  description = "ID of the management subnet"
  value       = azurerm_subnet.management.id
}

output "app_subnet_id" {
  description = "ID of the application subnet"
  value       = azurerm_subnet.app.id
}

output "private_endpoint_subnet_id" {
  description = "ID of the private endpoint subnet"
  value       = azurerm_subnet.private_endpoints.id
}

output "app_nsg_name" {
  description = "Name of the application network security group"
  value       = azurerm_network_security_group.app.name
}

output "app_nsg_id" {
  description = "ID of the application network security group"
  value       = azurerm_network_security_group.app.id
}