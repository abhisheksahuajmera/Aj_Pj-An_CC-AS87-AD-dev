variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}

variable "subnet_id" {
    type        = string
    description = "subnet_id"
}
//
variable "aznetsecgrp_prefix" {
  type        = string
  description = "(Required)"
  default     = "aznetsecgrp"
}

variable "aznetsecgrp_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "security_rule_rule_name" {
  type        = string
  description = "(Required)"
  default     = "AllowRDP"
}

variable "security_rule_priority" {
  type        = number
  description = "(Required)"
  default     = 300
}

variable "security_rule_direction" {
  type        = string
  description = "(Required)"
  default     = "Inbound"
}

variable "security_rule_access" {
  type        = string
  description = "(Required)"
  default     = "Allow"
}

variable "security_rule_protocol" {
  type        = string
  description = "(Required)"
  default     = "Tcp"
}

variable "security_rule_source_port_range" {
  type        = string
  description = "(Required)"
  default     = "*"
}

variable "security_rule_destination_port_range" {
  type        = string
  description = "(Required)"
  default     = "3389"
}

variable "security_rule_source_address_prefix" {
  type        = string
  description = "(Required)"
  default     = "*"
}

variable "security_rule_destination_address_prefix" {
  type        = string
  description = "(Required)"
  default     = "*"
}

locals {
  name    = "${var.aznetsecgrp_prefix}-${var.aznetsecgrp_version}"
}