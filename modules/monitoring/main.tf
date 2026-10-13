resource "azurerm_log_analytics_workspace" "main" {
  name                = "law-landingzone-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = "SecureAzureLandingZone"
  }
}