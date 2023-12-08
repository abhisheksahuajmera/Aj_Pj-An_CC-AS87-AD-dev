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

  # backend "azurerm" {
  #   resource_group_name   = "Assetronai-dev-101-rg-108"
  #   storage_account_name  = "sa110"
  #   container_name        = "sacon100"
  #   key                   = "state100.tfstate" 
  #   access_key            = "gM2VSx+n9bCQgm5GEhzMk2r4J8VpEib+3E9ORv+GaI0jATiOgyrK6ZIcaIEMwoy+40llPcFX9Pp/+AStSDJ+Cw=="
  # }
  //QA
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