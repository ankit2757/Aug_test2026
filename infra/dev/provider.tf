terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.56.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteRg"
    storage_account_name = "donotdeletestorage5"
    container_name       = "tfstate"
    key                  = "rks_122025.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "13dfd1e6-6770-4299-b7ea-6aa09b346468"
}