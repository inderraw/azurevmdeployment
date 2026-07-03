terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
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
