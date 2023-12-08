variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}
//
variable "azvpn_prefix" {
  type        = string
  description = "(Required)"
  default     = "azvpn"
}

variable "azvpn_version" {
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
  name    = "${var.azvpn_prefix}-${var.azvpn_version}"
}
