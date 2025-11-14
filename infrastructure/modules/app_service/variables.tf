variable "region" {
  type        = string
  description = "Region to create resources in"
}

variable "app_name" {
  type        = string
  description = "App or project name - prefix for resources"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group to create this module's resources in"
}