resource "azurerm_service_plan" "consumption_plan" {
  name                = "${var.app_name}-app-service-consumption-plan"
  location            = var.region
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "juice_shop" {
  name                = "${var.app_name}-app-service"
  resource_group_name = var.resource_group_name
  location            = var.region
  service_plan_id     = azurerm_service_plan.consumption_plan.id

  site_config {
    application_stack {
      docker_image_name = "hashicorp/http-echo"
    }
  }

  lifecycle {
    ignore_changes = [site_config[0].application_stack]
  }
}