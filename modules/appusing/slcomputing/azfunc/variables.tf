variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "azfunc"
}

variable "version" {
  type        = string
  description = "(Required)"
  default     = "100"
}

locals {
  name    = "${var.prefix}-${var.version}"
}
