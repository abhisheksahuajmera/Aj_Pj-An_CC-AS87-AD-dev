resource "azurerm_monitor_diagnostic_setting" "azurerm_monitor_diagnostic_settingrg_spoke_vnet_dev" {
    name               = local.name
    target_resource_id = "${var.target_resource_id}"
    log_analytics_workspace_id = "${var.log_analytics_workspace_id}"
 

    log {
      category = "${var.log_category}"
    }

    metric {
        category =  "${var.metric_category}"

        retention_policy {
            enabled = "${var.retention_policy_enabled}"
        }
    }
}