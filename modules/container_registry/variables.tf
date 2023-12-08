variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}

// 
variable "azpvtnet_prefix" {
  type        = string
  description = "(Required)"
  default     = "azpvtnet"
}

variable "azpvtnet_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

// --
locals {
   azacr_name    = "${var.azacr_prefix}${var.azacr_version}"
   azacrwh_name    = "${var.azacr_prefix}${var.azacr_version}"
}