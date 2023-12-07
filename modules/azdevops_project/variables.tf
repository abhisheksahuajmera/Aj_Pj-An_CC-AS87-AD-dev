variable "description" {
  type    = string
  default = "Sample Azure DevOps Project Created Using Terraform"
}

variable "visibility" {
  type    = string
  default = "private"
}

variable "version_control" {
  type    = string
  default = "Git"
}

variable "work_item_template" {
  type    = string
  default = "Agile"
}

locals {
  project_name  = "${var.project_prefix}${var.project_version}"
}