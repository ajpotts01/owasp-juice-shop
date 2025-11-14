resource "azurerm_container_registry" "container_registry" {
  name                = "${replace(var.app_name, "-", "")}cr"
  resource_group_name = var.resource_group_name
  location            = var.region
  sku                 = "Basic"
  admin_enabled       = false
}