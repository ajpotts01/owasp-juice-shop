module "resource_group" {
  source   = "./modules/resource_group"
  region   = var.region
  app_name = var.app_name
}

module "container_registry" {
  source              = "./modules/container_registry"
  region              = var.region
  app_name            = var.app_name
  resource_group_name = module.resource_group.resource_group_name
}

module "app_service" {
  source              = "./modules/app_service"
  region              = var.region
  resource_group_name = module.resource_group.resource_group_name
  app_name            = var.app_name
}