# output "nameop"      { value = "${azurerm_resource_group.resource_group.name}" }
# output "locationop"      { value = "${azurerm_resource_group.resource_group.location}" }


output "resource_group_nameop"      { value = local.resource_group_name }
output "resource_group_locationop"      { value = local.resource_group_location }
