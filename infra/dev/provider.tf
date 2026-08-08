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
  subscription_id = "87d50f5f-0378-4bfc-a60a-a6ac3b0e9344"
}