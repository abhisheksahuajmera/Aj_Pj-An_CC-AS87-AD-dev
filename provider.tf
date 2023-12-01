// Store in Git->Connect throgh vcs->Connect Azure using Tera Cloud Env Var->run mannually from new run->implement in azure
terraform {
  cloud {
    organization = "Ajmerainfotech" //"${var.org}"

    workspaces {
      name = "Aj_Pj-An_CC-AS87-AD-dev" //"${var.workspace}"
    }
  }
}

provider "azurerm" {
  features {}
}