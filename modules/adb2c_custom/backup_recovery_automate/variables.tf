variable "resource_group_name_multireg" {
    type        = list
    description = ""
}

variable "resource_group_backup_multireg_locations" {
    type        = list
    description = ""
}

variable "resource_group_backup_multireg_locations_country_code" {
    type        = list
    description = ""
}

variable "resource_group_backup_multireg_locations_data_residency_location" {
    type        = list
    description = ""
}

variable "sku_name" {
  type        = string
  description = "(Required)"
  default     = "Basic"
}

variable "azatmnac_prefix" {
  type        = string
  description = ""
  default     = "azatmnac"
}

variable "azatmnrnbk_prefix" {
  type        = string
  description = ""
  default     = "azatmnrnbk_recovery"
}

variable "runbook_type" {
  type        = string
  description = ""
  default     = "PowerShell"
}

variable "log_verbose" {
  type        = bool
  description = ""
  default     = true
}