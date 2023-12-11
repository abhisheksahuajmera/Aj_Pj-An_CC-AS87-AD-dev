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
  default     = "azvnet_spoke_dev"
}

variable "azvnet_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "address_space" {
  type        = list
  description = "(Required)"
  default     = ["10.2.0.0/20"]
}

variable "dns_servers" {
  type        = list
  description = "(Required)"
  default     = ["10.5.0.4","168.63.129.16"]
}

locals {
  name    = "${var.azvnet_prefix}-${var.azvnet_version}"
}
