provider "azuredevops" {
  version = ">= 0.0.1"
  org_service_url = "https://dev.azure.com/ajmerainfotech100"
  personal_access_token = "4x4qccuoumcb2iw4pkkwjqqodulscfaxn4thhj3sfjdvn57xk7ea"
}

resource "azuredevops_project" "azuredevops_projecttg" {
  project_name       = local.project_name
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

