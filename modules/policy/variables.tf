variable "resource_group_id" {
  description = "ID of the resource group where policies will be assigned"
  type        = string
}

variable "allowed_locations" {
  description = "List of Azure regions allowed by policy"
  type        = list(string)

  default = [
    "eastus",
    "eastus2"
  ]
}