variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "virtual_network_name" {
    type        = string
    description = "virtual_network_name"
}

variable "remote_virtual_network_id" {
    type        = string
    description = "remote_virtual_network_id"
}

//
variable "hub2spokedevnetwrkpeer_prefix" {
  type        = string
  description = "(Required)"
  default     = "hub2spokedevnetwrkpeer"
}

variable "hub2spokedevnetwrkpeer_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

locals {
  name    = "${var.hub2spokedevnetwrkpeer_prefix}-${var.hub2spokedevnetwrkpeer_version}"
}