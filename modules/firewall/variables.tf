variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "subnet_id" {
    type        = string
    description = "subnet_id"
}

variable "public_ip_address_id" {
    type        = string
    description = "public_ip_address_id"
}

variable "location" {
    type        = string
    description = "location"
}
//
variable "firewall_prefix" {
  type        = string
  description = "(Required)"
  default     = "firewall"
}

variable "firewall_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "sku_name" {
  type        = string
  description = "(Required)"
  default     = "AZFW_VNet"
}

variable "sku_tier" {
  type        = string
  description = "(Required)"
  default     = "Standard"
}

variable "ipconfig_prefix" {
  type        = string
  description = "(Required)"
  default     = "ipconfig"
}

variable "ipconfig_version" {
  type        = string
  description = "(Required)"
  default     = "100"
}

locals {
  firewall_name    = "${var.firewall_prefix}-${var.firewall_version}"
  ipconfig_name    = "${var.ipconfig_prefix}-${var.ipconfig_version}"
}