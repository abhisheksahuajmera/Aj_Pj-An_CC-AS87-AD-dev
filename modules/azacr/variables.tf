# variable "resource_group_name" {
#     type        = string
#     description = "resource_group_name"
# }

# variable "resource_group_location" {
#     type        = string
#     description = "resource_group_location"
# }

# // 
# variable "azacr_prefix" {
#   type        = string
#   description = "(Required)"
#   default     = "azacr"
# }

# variable "azacr_version" {
#   type        = string
#   description = "(Required)"
#   default     = "100"
# }

# variable "azacr_sku" {
#     type        = string
#     description = "sku"
#     default     = "Standard"
# }

# variable "azacr_admin_enabled" {
#     type        = bool
#     description = "sku"
#     default     = false
# }

# // -
# variable "azacrwh_service_uri" {
#   type        = string
#   description = "(Required)"
#   default     = "https://mywebhookreceiver.example/mytag"
# }

# variable "azacrwh_prefix" {
#   type        = string
#   description = "(Required)"
#   default     = "azacrwh"
# }

# variable "azacrwh_version" {
#   type        = string
#   description = "(Required)"
#   default     = "100"
# }

# variable "azacrwh_status" {
#   type        = string
#   description = "(Required)"
#   default     = "enabled"
# }

# variable "azacrwh_scope" {
#   type        = string
#   description = "(Required)"
#   default     = "mytag:*"
# }

# variable "azacrwh_actions" {
#   type        = string
#   description = "(Required)"
#   default     = "push"
# }

# variable "azacrwh_custom_headers_content_type" {
#   type        = string
#   description = "(Required)"
#   default     = "application/json"
# }

# // --
# locals {
#    azacr_name    = "${var.azacr_prefix}-${var.azacr_version}"
#    azacrwh_name    = "${var.azacr_prefix}-${var.azacr_version}"
# }