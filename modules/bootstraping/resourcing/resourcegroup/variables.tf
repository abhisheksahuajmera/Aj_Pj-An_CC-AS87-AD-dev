// Coming from root module or else create .tf var for each sub module
variable "prefix" {
  type        = string
  description = "(Optional) The prefix which should be used for all resources in this example. Defaults to burrito."
}

variable "environment" {
  description = "The name of the environment (ex. DEV, STAGING, PROD)"
  type        = string
}

variable "environment_version" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "resource_group_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "100"
}

variable "resource_group_prefix" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "rg"
}

variable "resource_group_location" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "east us"
}

locals {
  resource_group_name    = "${var.prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
  resource_group_location = "${var.resource_group_location}"
}
