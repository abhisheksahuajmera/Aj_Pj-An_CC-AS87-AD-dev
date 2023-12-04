variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}

variable "app_service_plan_id" {
    type        = string
    description = "app_service_plan_id"
}

variable "storage_account_name" {
    type        = string
    description = "storage_account_name"
}

variable "storage_account_access_key" {
    type        = string
    description = "storage_account_access_key"
}
//
variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "azfunc"
}

variable "azfunc_version" {
  type        = string
  description = "(Required)"
  default     = "100"
}

locals {
  name    = "${var.prefix}-${var.azfunc_version}"
}
