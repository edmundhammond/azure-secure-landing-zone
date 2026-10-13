resource "azurerm_resource_group" "platform" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = "SecureAzureLandingZone"
  }
}

module "networking" {
  source = "../../modules/networking"

  resource_group_name = azurerm_resource_group.platform.name
  location            = var.location
  environment         = var.environment
}

module "monitoring" {
  source = "../../modules/monitoring"

  resource_group_name = azurerm_resource_group.platform.name
  location            = var.location
  environment         = var.environment
}

module "policy" {
  source = "../../modules/policy"

  resource_group_id = azurerm_resource_group.platform.id

  allowed_locations = [
    "eastus",
    "eastus2"
  ]
}