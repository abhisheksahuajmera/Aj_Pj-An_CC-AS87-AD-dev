# resource "azurerm_storage_account" "azurerm_storage_accounttg" {
#   name                     = local.name
#   resource_group_name      = "${module.resourcing_resourcegroup.resource_group_name}"
#   location                 = "${module.resourcing_resourcegroup.resource_group_location}"
#   account_tier             = "${var.account_tier}"
#   account_replication_type = "${var.account_replication_type}"
# }