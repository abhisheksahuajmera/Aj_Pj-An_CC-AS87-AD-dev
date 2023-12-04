# output "resource_group_nameop"      { value = local.resource_group_name }
# output "resource_group_locationop"      { value = local.resource_group_location}
# output "resource_group_country_codeop"      { value = local.resource_group_country_code }

output "resource_group_nameop"      { value = "${azurerm_resource_group.azurerm_resource_grouptg.name}" }
output "resource_group_locationop"      { value = "${azurerm_resource_group.azurerm_resource_grouptg.location}" }
output "resource_group_country_codeop"      { value = local.resource_group_country_code }
