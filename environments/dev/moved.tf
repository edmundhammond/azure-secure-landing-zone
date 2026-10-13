moved {
  from = azurerm_virtual_network.hub
  to   = module.networking.azurerm_virtual_network.hub
}

moved {
  from = azurerm_subnet.management
  to   = module.networking.azurerm_subnet.management
}

moved {
  from = azurerm_virtual_network.spoke
  to   = module.networking.azurerm_virtual_network.spoke
}

moved {
  from = azurerm_subnet.app
  to   = module.networking.azurerm_subnet.app
}

moved {
  from = azurerm_subnet.private_endpoints
  to   = module.networking.azurerm_subnet.private_endpoints
}

moved {
  from = azurerm_virtual_network_peering.hub_to_spoke
  to   = module.networking.azurerm_virtual_network_peering.hub_to_spoke
}

moved {
  from = azurerm_virtual_network_peering.spoke_to_hub
  to   = module.networking.azurerm_virtual_network_peering.spoke_to_hub
}

moved {
  from = azurerm_network_security_group.app
  to   = module.networking.azurerm_network_security_group.app
}

moved {
  from = azurerm_subnet_network_security_group_association.app
  to   = module.networking.azurerm_subnet_network_security_group_association.app
}

moved {
  from = azurerm_log_analytics_workspace.main
  to   = module.monitoring.azurerm_log_analytics_workspace.main
}

moved {
  from = azurerm_policy_definition.require_environment_tag
  to   = module.policy.azurerm_policy_definition.require_environment_tag
}

moved {
  from = azurerm_resource_group_policy_assignment.require_environment_tag
  to   = module.policy.azurerm_resource_group_policy_assignment.require_environment_tag
}

moved {
  from = azurerm_policy_definition.allowed_locations
  to   = module.policy.azurerm_policy_definition.allowed_locations
}

moved {
  from = azurerm_resource_group_policy_assignment.allowed_locations
  to   = module.policy.azurerm_resource_group_policy_assignment.allowed_locations
}