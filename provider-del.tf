terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
  subscription_id = "af292523-84d8-4ab1-896d-123794c3f15a"
  client_id       = "1994217a-d3d2-4f76-9643-1544e169eb64"
  client_secret   = "cwr8Q~E9K_mDmAWS~rNzK.ZYQDP1A0uTs~kWwcNA"
  tenant_id       = "99ae6c7e-4bd8-44d5-9ab3-4cbbec207ee3"
}