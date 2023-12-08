variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}
//
variable "publicip_prefix" {
  type        = string
  description = "(Required)"
  default     = "aznetsecgrp_prefix"
}

variable "publicip_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "allocation_method" {
  type        = string
  description = "(Required)"
  default     = "Static"
}

variable "sku" {
  type        = string
  description = "(Required)"
  default     = "Standard"
}

locals {
  name    = "${var.publicip_prefix}-${var.publicip_version}"
}