terraform {
  required_providers {
    # azuredevops = {
    #   source = "microsoft/azuredevops"
    #   version = ">= 0.1.0" 
    # }

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
    resource_group_name   = "assetronai-dev-100-rg-102"
    storage_account_name  = "sa0999"
    container_name        = "sacon100"
    key                   = "state100.tfstate"
    access_key            = "5v9vr4gJni1vbH7o/oNXXv5ocKtKeuenr/1kr27aRTjUQWb6LKfpHAszwILleSSAZTlqgEt8A60v+ASteZYaIw=="
  }  
}

provider "azurerm" {
  features {}
}

# provider "azuredevops" {
#   org_service_url = "https://dev.azure.com/ajmerainfotech100"
#   personal_access_token = "vlij5prwhkclld6zn34l4htqzfjj4onr2qg4jjx37wchr5rgj2fa"
# }

