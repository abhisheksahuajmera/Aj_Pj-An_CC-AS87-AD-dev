variable "org" {
  description = "Org name"
  type        = string
  default     = "Ajmerainfotech"
}

variable "project" {
  description = "project"
  type        = string
  default     = "Aj_Pj-An_CC-AS87"
}

variable "project_prefix" {
  type        = string
  description = "(Optional) The prefix which should be used for all resources in this example. Defaults to burrito."
  default     = "Assetronai"
}

variable "workspace" {
  description = "workspace"
  type        = string
  default     = "Aj_Pj-An_CC-AS87-dev"
}

variable "environment" {
  description = "The name of the environment (ex. DEV, STAGING, PROD)"
  type        = string
  default     = "dev"
}

variable "environment_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "100"
}

variable "resource_group_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "108"
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

variable "resource_group_location_country_code" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "US"
}

variable "resource_group_data_residency_location" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "United States"
}

locals {
  resource_group_name    = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
  resource_group_location = "${var.resource_group_location}"
  resource_group_location_country_code = "${var.resource_group_location_country_code}"
  resource_group_data_residency_location = "${var.resource_group_data_residency_location}"
}