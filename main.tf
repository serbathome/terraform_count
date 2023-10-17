terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  count    = var.rg_enabled ? 1 : 0
  source   = "./modules/resource_group"
  name     = "rg-terraform"
  location = "westus"
}
