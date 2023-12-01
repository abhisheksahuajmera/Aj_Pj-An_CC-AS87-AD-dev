variable "org" {
  description = "Org name"
  type        = string
  default     = "Ajmerainfotech"
}

variable "project" {
  description = "project"
  type        = string
  default     = "Aj_Pj-An_CC-AS87"
}

variable "prefix" {
  type        = string
  description = "(Optional) The prefix which should be used for all resources in this example. Defaults to burrito."
  default     = "Assetronai"
}

variable "workspace" {
  description = "workspace"
  type        = string
  default     = "Aj_Pj-An_CC-AS87-dev"
}

variable "environment" {
  description = "The name of the environment (ex. DEV, STAGING, PROD)"
  type        = string
  default     = "dev"
}

variable "environment_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "100"
}