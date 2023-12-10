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
  # backend "azurerm" {
  #   resource_group_name   = "assetronai-dev-100"
  #   storage_account_name  = "sa712"
  #   container_name        = "sacon101"
  #   # key                   = "state103.tfstate"
  #   key                   = var.state_file_name
  # }  
}

provider "azurerm" {
  features {}
}