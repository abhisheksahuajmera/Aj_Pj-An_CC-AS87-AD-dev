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

variable "virtual_network_name" {
    type        = string
    description = "virtual_network_name"
}
//
variable "address_prefixes" {
    type        = list
    description = "address_prefixes"
    default = ["10.0.3.0/24"] 
}

variable "firewall_policy_prefix" {
  type        = string
  description = "(Required)"
  default     = "firewallpol"
}

variable "firewall_policy_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

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
  firewall_policy_name    = "${var.firewall_policy_prefix}-${var.firewall_policy_version}"
  firewall_name    = "${var.firewall_prefix}-${var.firewall_version}"
  ipconfig_name    = "${var.ipconfig_prefix}-${var.ipconfig_version}"
}