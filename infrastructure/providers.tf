terraform {
  required_version = ">= 1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.30.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.1"
    }
  }
}

provider "azurerm" {
  # Note:
  # This provider is populated by environment variables that Terraform expects:
  # - ARM_SUBSCRIPTION_ID
  # - ARM_TENANT_ID
  # - ARM_CLIENT_ID
  # - ARM_CLIENT_SECRET
  features {}
}