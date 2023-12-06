variable "location" {
    type        = string
    description = "location"
}

variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}
//
variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "azstsite"
}

variable "version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "sku_size" {
  type        = string
  description = "(Required)"
  default     = "Free"
}

locals {
   name    = "${var.prefix}${var.aadb2c_version}"
}