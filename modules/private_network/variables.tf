variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}
//
variable "azvnet_prefix" {
  type        = string
  description = "(Required)"
  default     = "azvnet"
}

variable "azvnet_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "address_space" {
  type        = list
  description = "(Required)"
  default     = ["10.0.0.0/16"]
}

locals {
  name    = "${var.azvnet_prefix}-${var.azvnet_version}"
}