# output "resource_group_name"      { value = local.resource_group_name }
# output "resource_group_location"      { value = local.resource_group_location}
# output "resource_group_country_code"      { value = local.resource_group_country_code }


output "resource_group_name"      { value = "${azurerm_resource_group.azurerm_resource_grouptg.name}" }
output "resource_group_location"      { value = "${azurerm_resource_group.azurerm_resource_grouptg.location}" }
output "resource_group_country_code"      { value = "${azurerm_resource_group.azurerm_resource_grouptg.resource_group_country_code}" }
