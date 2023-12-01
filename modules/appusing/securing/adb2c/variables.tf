# variable "resource_group_name" {
#   type        = string
#   description = "(Required) Update to force a change."
# }

# //
# variable "country_code" {
#   type        = string
#   description = "(Required)"
#   default     = "US"
# }

# variable "data_residency_location" {
#   type        = string
#   description = "(Required)"
#   default     = "United States"
# }

# variable "prefix" {
#   type        = string
#   description = "(Required)"
#   default     = "aadb2c"
# }

# variable "version" {
#   type        = string
#   description = "(Required)"
#   default     = "100"
# }
# variable "sku_name" {
#   type        = string
#   description = "(Required)"
#   default     = "PremiumP1"
# }

# locals {
#   country_code    = "${var.country_code}"
#   data_residency_location    = "${var.data_residency_location}"
#   display_name    = "${var.prefix}-${var.environment}-${var.environment_version}-${var.prefix}-${var.version}"
#   domain_name    = "${var.prefix}${var.environment}${var.environment_version}${var.prefix}${var.version}.onmicrosoft.com"
#   resource_group_name = "${module.resourcing.resource_group_name}"
#   sku_name = "${var.sku_name}"
# }
