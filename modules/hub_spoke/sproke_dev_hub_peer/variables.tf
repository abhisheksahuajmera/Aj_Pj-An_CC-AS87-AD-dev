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
variable "spokedev2hubnetwrkpeer_prefix" {
  type        = string
  description = "(Required)"
  default     = "spokedev2hubnetwrkpeer"
}

variable "spokedev2hubnetwrkpeer_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

locals {
  name    = "${var.spokedev2hubnetwrkpeer_prefix}-${var.spokedev2hubnetwrkpeer_version}"
}