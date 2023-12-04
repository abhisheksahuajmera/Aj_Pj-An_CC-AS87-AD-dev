variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "asac"
}

variable "version" {
  type        = string
  description = "(Required)"
  default     = "100"
}

variable "account_tier" {
  type        = string
  description = "(Required)"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "(Required)"
  default     = "LRS"
}

variable "storage_account_name" {
  type        = string
  description = "(Required)"
  default     = "LRS"
}

variable "storage_account_access_key" {
  type        = string
  description = "(Required)"
  default     = "LRS"
}

locals {
  name    = "${var.prefix}-${var.version}"
}
