variable "target_resource_id" {
    type        = string
    description = "target_resource_id"
}

variable "log_analytics_workspace_id" {
    type        = string
    description = "log_analytics_workspace_id"
}
//
variable "log_category" {
    type        = string
    description = "log_category"
    default = "VMProtectionAlerts"
}

variable "metric_category" {
    type        = string
    description = "metric_category"
    default = "AllMetrics"
}

variable "retention_policy_enabled" {
    type        = bool
    description = "retention_policy_enabled"
    default = true
}
//
variable "hubvnetazmntr_prefix" {
  type        = string
  description = "(Required)"
  default     = "hubvnetazmntr"
}

variable "hubvnetazmntr_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

locals {
  name    = "${var.hubvnetazmntr_prefix}-${var.hubvnetazmntr_version}"
}