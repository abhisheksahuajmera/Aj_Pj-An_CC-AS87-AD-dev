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

  backend "azurerm" {
    resource_group_name   = "Assetronai-dev-101-rg-108"
    storage_account_name  = "sa110"
    container_name        = "sacon100"
    key                   = "state100.tfstate" 
    access_key            = "gM2VSx+n9bCQgm5GEhzMk2r4J8VpEib+3E9ORv+GaI0jATiOgyrK6ZIcaIEMwoy+40llPcFX9Pp/+AStSDJ+Cw=="
  }
}

provider "azurerm" {
  features {}
}

provider "azuredevops" {
  org_service_url = "https://dev.azure.com/ajmerainfotech100"
}

