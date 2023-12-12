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
  description = "project_prefix"
  default     = "Assetronai"
}

variable "project_github_pattoken" {
  type        = string
  description = "project_github_pattoken"
}


variable "project_version" {
  type        = string
  description = "project_version"
  default     = "100"
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

variable "resource_group_backup_multireg_locations" {
  type        = list
  description = "(Required) Update to force a change."
  default     = ["East US", "West Europe", "Southeast Asia"]
}

variable "resource_group_backup_multireg_locations_country_code" {
  type        = list
  description = "(Required) Update to force a change."
  default     = ["US","US","US"]
}

variable "resource_group_backup_multireg_locations_data_residency_location" {
  type        = list
  description = "(Required) Update to force a change."
  default     = ["US","US","US"]
}

variable "resource_group_name_multireg" {
  type        = string
  description = ""
}

variable "state_resource_group_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "Assetronai-dev-101-rg-108"
}

variable "state_storage_account_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "sa110"
}

variable "state_container_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "sacon100"
}

variable "state_key" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "state103.tfstate"
}

variable "state_file_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "state103.tfstate"
}

locals {
  project_prefix         = "${var.project_prefix}"
  resource_group_prefix  = "${var.resource_group_prefix}"
  environment            = "${var.environment}"
  environment_version    = "${var.environment_version}"
  resource_group_name_multireg    = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}"
  resource_group_name    = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
  resource_group_location = "${var.resource_group_location}"  
  resource_group_location_country_code = "${var.resource_group_location_country_code}"
  resource_group_data_residency_location = "${var.resource_group_data_residency_location}"
  resource_group_backup_multireg_locations = "${var.resource_group_backup_multireg_locations}"
  resource_group_backup_multireg_locations_country_code = "${var.resource_group_backup_multireg_locations_country_code}"
  resource_group_backup_multireg_locations_data_residency_location = "${var.resource_group_backup_multireg_locations_data_residency_location}"
}