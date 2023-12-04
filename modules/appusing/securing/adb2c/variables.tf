//
variable "country_code" {
  type        = string
  description = "(Required)"
  default     = "US"
}

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
   country_code = "${module.resourcing_resourcegroup.resource_group_country_code}"
   data_residency_location = "${module.resourcing_resourcegroup.resource_group_location}"
   display_name    = "${var.prefix}-${var.aadb2c_version}"
   display_name_modified = replace(local.display_name, "-", "")
   domain_name    = "${local.display_name_modified}${var.domain_suffix}"
   resource_group_name     = "${module.resourcing_resourcegroup.resource_group_name}"
   sku_name                = "${var.sku_name}"
}