terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kubernetesrg"
    storage_account_name = "deployment121"
    container_name       = "terraform-state-container"
    key                  = "aksstate"
  }
}

provider "azurerm" {
  features {}
}
