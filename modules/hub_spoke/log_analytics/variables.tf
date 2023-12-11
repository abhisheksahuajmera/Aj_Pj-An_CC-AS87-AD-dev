variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}

variable "tags_environment" {
    type        = string
    description = "tags_environment"
}
//
variable "sku" {
  type        = string
  description = "(Required)"
  default     = "PerGB2018"
}

variable "retention_in_days" {
  type        = number
  description = "(Required)"
  default     = 30
}

variable "tags_critical" {
    type        = string
    description = "tags_critical"
    default     = "Yes"
}

variable "tags_solution" {
    type        = string
    description = "tags_solution"
    default     = "Logs"
}

variable "tags_costcenter" {
    type        = string
    description = "tags_costcenter"
    default     = "It"
}

variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "law"
}

variable "law_version" {
  type        = string
  description = "(Required)"
  default     = "100"
}
// --
locals {
  name    = "${var.prefix}-${var.law_version}"
}