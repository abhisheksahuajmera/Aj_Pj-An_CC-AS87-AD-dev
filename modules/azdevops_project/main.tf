# terraform {
#   required_providers {
#     azuredevops = {
#       source = "microsoft/azuredevops"
#       version = "0.1.7"
#     }
#   }
# }

# provider "azuredevops" {
#   org_service_url = "https://dev.azure.com/ajmerainfotech100"
#   personal_access_token = "vlij5prwhkclld6zn34l4htqzfjj4onr2qg4jjx37wchr5rgj2fa"
# }

provider "azuredevops" {
  version = ">= 0.0.1"
  # Remember to specify the org service url and personal access token details below
  org_service_url = "https://dev.azure.com/ajmerainfotech100"
  personal_access_token = "vlij5prwhkclld6zn34l4htqzfjj4onr2qg4jjx37wchr5rgj2fa"
}

resource "azuredevops_project" "azuredevops_projecttg" {
  name               = local.name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template

  features = {
      "boards" = var.features_boards
      "repositories" = var.features_repositories
      "pipelines" = var.features_pipelines
      "testplans" = var.features_testplans
      "artifacts" = var.features_artifacts
  }
}

