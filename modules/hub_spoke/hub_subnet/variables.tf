variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}


variable "virtual_network_name" {
    type        = string
    description = "virtual_network_name"
}
//
variable "azvsubnet_prefix" {
  type        = string
  description = "(Required)"
  default     = "azvsubnet_hub"
}

variable "azvsubnet_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "address_prefixes" {
  type        = list
  description = "(Required)"
  default     =  ["10.0.2.0/28"]
}

locals {
  name    = "${var.azvsubnet_prefix}-${var.azvsubnet_version}"
}