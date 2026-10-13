resource "azurerm_policy_definition" "require_environment_tag" {
  name         = "require-environment-tag"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Require Environment tag"

  policy_rule = jsonencode({
    if = {
      field  = "tags['Environment']"
      exists = "false"
    }

    then = {
      effect = "deny"
    }
  })
}

resource "azurerm_resource_group_policy_assignment" "require_environment_tag" {
  name                 = "require-environment-tag"
  resource_group_id    = var.resource_group_id
  policy_definition_id = azurerm_policy_definition.require_environment_tag.id
}

resource "azurerm_policy_definition" "allowed_locations" {
  name         = "allowed-locations"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Allowed Azure locations"

  parameters = jsonencode({
    allowedLocations = {
      type = "Array"

      metadata = {
        displayName = "Allowed locations"
        description = "Azure regions where resources may be deployed"
      }
    }
  })

  policy_rule = jsonencode({
    if = {
      allOf = [
        {
          field = "location"
          notIn = "[parameters('allowedLocations')]"
        },
        {
          field     = "location"
          notEquals = "global"
        }
      ]
    }

    then = {
      effect = "deny"
    }
  })
}

resource "azurerm_resource_group_policy_assignment" "allowed_locations" {
  name                 = "allowed-locations"
  resource_group_id    = var.resource_group_id
  policy_definition_id = azurerm_policy_definition.allowed_locations.id

  parameters = jsonencode({
    allowedLocations = {
      value = var.allowed_locations
    }
  })
}