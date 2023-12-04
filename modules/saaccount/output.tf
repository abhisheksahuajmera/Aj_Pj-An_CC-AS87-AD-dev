output "storage_account_nameop" {
  description = "Default hostname of the created Function App"
  value       = local.name
}

output "storage_account_access_keyop" {
  description = "storage_account_nameop"
  value       = azurerm_storage_account.azurerm_storage_accounttg.primary_access_key
}