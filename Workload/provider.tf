terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "53f42a59-c7ad-4468-8d2b-e5119321c49e"
}
