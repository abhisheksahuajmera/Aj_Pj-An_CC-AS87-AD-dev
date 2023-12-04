variable "resource_group_name" {
    type        = string
    description = "RG name in Azure"
}

variable "resource_group_location" {
    type        = string
    description = "RG location in Azure"
}

variable "resource_group_location_country_code" {
    type        = string
    description = "RG location country code in Azure"
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
  default     = "100"
}

variable "sku_name" {
  type        = string
  description = "(Required)"
  default     = "PremiumP1"
}

locals {
   display_name    = "${var.prefix}-${var.aadb2c_version}"
   display_name_modified = replace(local.display_name, "-", "")
   domain_name    = "${local.display_name_modified}${var.domain_suffix}"
   sku_name                = "${var.sku_name}"
}