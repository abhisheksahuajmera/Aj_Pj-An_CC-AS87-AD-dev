resource "azuredevops_serviceendpoint_github" "serviceendpoint_github" {
  project_id            =  "${module.generating_gitproject.idop}"
  service_endpoint_name = var.service_endpoint_name

  auth_personal {
    personal_access_token = var.project_github_pattoken    
  }
}
