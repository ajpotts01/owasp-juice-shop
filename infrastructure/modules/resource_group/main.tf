resource "azurerm_resource_group" "project_rg" {
  name     = "rg-${var.app_name}"
  location = var.region
}