terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  # Recommended: Store your state file in an Azure Blob Storage container
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "youruniquestoragename1"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
