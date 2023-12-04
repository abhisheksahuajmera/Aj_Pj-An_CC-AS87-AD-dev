variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "azfunc"
}

variable "azfunc_version" {
  type        = string
  description = "(Required)"
  default     = "100"
}

locals {
  name    = "${var.prefix}-${var.azfunc_version}"
}
