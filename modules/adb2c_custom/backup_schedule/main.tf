resource "azurerm_automation_schedule" "backup_schedule" {
  name                    = "DailyBackupSchedule"
  resource_group_name     = azurerm_resource_group.example_rg.name
  automation_account_name = azurerm_automation_account.example_automation.name
  runbook_name            = azurerm_automation_runbook.backup_runbook.name

  schedule = "0 0 1 * * *"  # Example schedule: Runs daily at 00:00 UTC
}