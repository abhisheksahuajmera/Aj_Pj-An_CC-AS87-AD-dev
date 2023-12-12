resource "azurerm_automation_schedule" "azurerm_automation_scheduletg_recovery" {
  count                   = length(var.resource_group_backup_multireg_locations)
  name                    = "${var.azatmnscdle_prefix}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  resource_group_name     = "${var.resource_group_name_multireg}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  automation_account_name = ${var.automation_account_name[count.index]}"
  runbook_name            = ${var.runbook_name[count.index]}"
  schedule                = "${var.schedule}" 
}