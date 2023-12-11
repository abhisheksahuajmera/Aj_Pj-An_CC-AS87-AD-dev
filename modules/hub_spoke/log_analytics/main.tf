resource "azurerm_log_analytics_workspace" "azurerm_log_analytics_workspacetg" {
  name                = local.name
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "${var.sku}"
  retention_in_days   = "${var.retention_in_days}"
  tags = {
    "Critical"    = "${var.tags_critical}"
    "Solution"    = "${var.tags_solution}"
    "Costcenter"  = "${var.tags_costcenter}"
    "Environment" = "${var.tags_environment}"
  }
}