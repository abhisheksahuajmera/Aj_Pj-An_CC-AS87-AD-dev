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
  default     = "azsplan"
}

variable "azsplan_version" {
  type        = string
  description = "(Required)"
  default     = "100"
}

variable "sku_tier" {
  type        = string
  description = "(Required)"
  default     = "Standard"
}

variable "sku_size" {
  type        = string
  description = "(Required)"
  default     = "S1"
}

locals {
  name    = "${var.prefix}-${var.azsplan_version}"
}
