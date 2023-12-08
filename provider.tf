terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">= 0.1.0" 
    }

    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  //Dev
  backend "azurerm" {
    resource_group_name   = "assetronai-dev-100"
    storage_account_name  = "sa712"
    container_name        = "sacon101"
    key                   = "state102.tfstate"
    access_key            = "EweBna5+KadC4TShpkOemS8IFnw5GQ1BuZ0dNYzL4HU/J2JHIChcvSUoDrAyqDTndmfOGmCbEv8++AStJBSt/g=="
  }  
}

provider "azurerm" {
  features {}
}