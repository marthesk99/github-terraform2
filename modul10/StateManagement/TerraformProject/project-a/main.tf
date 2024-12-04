terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg_backend_msk"
    storage_account_name = "sabkmskpdi"
    container_name       = "sc-backend-msk"
    key                  = "project_a.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
  features {}
}

# Ressursgruppen
resource "azurerm_resource_group" "rg_a" {
  name     = var.resource_group_name
  location = var.location
}

