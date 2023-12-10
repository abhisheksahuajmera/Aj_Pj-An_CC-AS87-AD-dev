# terraform {
#   //Dev
#   backend "azurerm" {
#     # resource_group_name   = "assetronai-dev-100"
#     # storage_account_name  = "sa712"
#     # container_name        = "sacon101"
#     # # key                   = "state103.tfstate"
#     # key                   = var.state_file_name
#   }  
# }

terraform {
  //Dev
  backend "azurerm" {
    resource_group_name   = var.state_resource_group_name
    storage_account_name  = var.state_storage_account_name
    container_name        = var.state_container_name
    key                   = var.state_key
  }  
}