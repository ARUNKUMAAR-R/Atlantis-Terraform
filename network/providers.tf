terraform {
  required_version = "<= 1.13.0"
  backend "azurerm" {
    resource_group_name  = "staterg-jw"
    storage_account_name = "backendtetra"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
}

provider "azurerm" {
  features {}
}
