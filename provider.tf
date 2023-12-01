// Store in Git->Connect throgh vcs->Connect Azure using Tera Cloud Env Var->run mannually from new run->implement in azure
terraform {
  cloud {
    organization = "${var.org}"

    workspaces {
      name = "${var.workspace}"
    }
  }
}

provider "azurerm" {
  features {}
}