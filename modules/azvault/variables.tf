# variable "resource_group_name" {
#     type        = string
#     description = "resource_group_name"
# }

# variable "resource_group_location" {
#     type        = string
#     description = "resource_group_location"
# }

# variable "enabled_for_disk_encryption" {
#   type        = bool
#   description = "(Required)"
#   default     = true
# }

# variable "soft_delete_retention_days" {
#   type        = number
#   description = "(Required)"
#   default     = 7
# }

# variable "purge_protection_enabled" {
#     type        = bool
#     description = "purge_protection_enabled"
#     default     = false
# }

# variable "sku_name" {
#     type        = string
#     description = "sku"
#     default     = "standard"
# }

# variable "access_policy_key_permissions" {
#     type        = string
#     description = "access_policy_key_permissions"
#     default     = "Get"
# }

# variable "access_policy_secret_permissions" {
#     type        = string
#     description = "access_policy_secret_permissions"
#     default     = "Get"
# }

# variable "access_policy_storage_permissions" {
#     type        = string
#     description = "access_policy_storage_permissions"
#     default     = "Get"
# }

# variable "prefix" {
#   type        = string
#   description = "(Required)"
#   default     = "azfunc"
# }

# variable "version" {
#   type        = string
#   description = "(Required)"
#   default     = "100"
# }
# // --
# locals {
#   name    = "${var.prefix}-${var.version}"
# }