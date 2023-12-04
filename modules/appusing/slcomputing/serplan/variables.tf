resource "azurerm_app_service_plan" "example" {
  name                = local.name
  location            = "${module.resourcing_resourcegroup.resource_group_location}"
  resource_group_name = "${module.resourcing_resourcegroup.resource_group_name}"

  sku {
    tier = "${var.resourcing.resource_group_name}"
    size = "S1"
  }
}

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
