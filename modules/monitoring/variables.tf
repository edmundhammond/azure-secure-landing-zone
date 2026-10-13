variable "resource_group_name" {
  description = "Name of the resource group where monitoring resources are deployed"
  type        = string
}

variable "location" {
  description = "Azure region for monitoring resources"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}