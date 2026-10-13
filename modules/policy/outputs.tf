output "require_environment_tag_policy_id" {
  description = "ID of the Require Environment Tag policy definition"
  value       = azurerm_policy_definition.require_environment_tag.id
}

output "allowed_locations_policy_id" {
  description = "ID of the Allowed Locations policy definition"
  value       = azurerm_policy_definition.allowed_locations.id
}

output "require_environment_tag_assignment_id" {
  description = "ID of the Require Environment Tag policy assignment"
  value       = azurerm_resource_group_policy_assignment.require_environment_tag.id
}

output "allowed_locations_assignment_id" {
  description = "ID of the Allowed Locations policy assignment"
  value       = azurerm_resource_group_policy_assignment.allowed_locations.id
}