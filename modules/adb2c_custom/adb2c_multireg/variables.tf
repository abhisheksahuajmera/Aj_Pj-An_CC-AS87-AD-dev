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
//
variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "aadb2c"
}

variable "domain_suffix" {
  type        = string
  description = "(Required)"
  default     = ".onmicrosoft.com"
}

variable "aadb2c_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "aadb2c_versions" {
  type        = list
  description = "(Required)"
  default = ["100", "101", "102"]  
}

variable "sku_name" {
  type        = string
  description = "(Required)"
  default     = "PremiumP1"
}

locals {
   display_name    = "${var.prefix}${var.aadb2c_version}"
   display_name_modified = replace(local.display_name, "-", "")
   domain_name    = "${local.display_name}${var.domain_suffix}"
   sku_name  = "${var.sku_name}"
}