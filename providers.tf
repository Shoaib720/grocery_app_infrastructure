terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
  backend "azurerm" {
    container_name = "tfstates"
    key = "i2d-azure-dev.tfstate"
    storage_account_name = "stgaccterraformfiles"
    resource_group_name = "basic-rg"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}