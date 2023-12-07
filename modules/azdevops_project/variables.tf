variable "project_prefix" {
  type    = string
}

variable "project_version" {
  type    = string
}

//
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

variable "features_boards" {
  type    = string
  default = "enabled"
}

variable "features_repositories" {
  type    = string
  default = "enabled"
}

variable "features_pipelines" {
  type    = string
  default = "enabled"
}

variable "features_testplans" {
  type    = string
  default = "enabled"
}

variable "features_artifacts" {
  type    = string
  default = "enabled"
}

locals {
  name  = "${var.project_prefix}${var.project_version}"
}