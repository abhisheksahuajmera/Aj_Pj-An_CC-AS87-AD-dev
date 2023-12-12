resource "azurerm_automation_account" "azurerm_automation_accounttg" {
  count               = length(var.resource_group_backup_multireg_locations)
  name                = "${var.azatmnac_prefix}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  resource_group_name = "${var.resource_group_name_multireg}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  location            = "${var.resource_group_backup_multireg_locations[count.index]}"
  sku_name            = "${var.sku_name}"
}

resource "azurerm_automation_runbook" "azurerm_automation_runbooktg" {
  count                   = length(var.resource_group_backup_multireg_locations)
  name                    = "${var.azatmnrnbk_prefix}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  resource_group_name     = "${var.resource_group_name_multireg}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  automation_account_name = azurerm_automation_account.azurerm_automation_accounttg[count.index].name
  runbook_type            = "${var.runbook_type}"
  log_verbose             = "${var.log_verbose}" 
  content                 = <<-CONTENT
    param (
        [Parameter(Mandatory=$true)]
        [string]$InputParameter
    )

    # Your PowerShell script goes here
    Write-Output "The input parameter is: $InputParameter"
  CONTENT
}