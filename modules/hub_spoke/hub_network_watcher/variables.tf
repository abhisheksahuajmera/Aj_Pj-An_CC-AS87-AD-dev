variable "resource_group_name" {
    type        = string
    description = "resource_group_name"
}

variable "location" {
    type        = string
    description = "location"
}
//
variable "hubnetwatcher_prefix" {
  type        = string
  description = "(Required)"
  default     = "hubnetwatcher"
}

variable "hubnetwatcher_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

//
variable "tags_Critical" {
  type        = string
  description = "(Required)"
  default     = "Yes"
}

variable "tags_Solution" {
  type        = string
  description = "(Required)"
  default     = "Vnet"
}

variable "tags_Costcenter" {
  type        = string
  description = "(Required)"
  default     = "It"
}

variable "tags_Location" {
  type        = string
  description = "(Required)"
  default     = "Weu"
}

locals {
  name    = "${var.hubnetwatcher_prefix}-${var.hubnetwatcher_version}"
}