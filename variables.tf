#######################
## Standard variables
#######################

variable "cluster_name" {
  type = string
}

variable "base_domain" {
  type = string
}

variable "argocd_namespace" {
  type = string
}

variable "namespace" {
  type    = string
  default = "traefik"
}

variable "helm_values" {
  description = "Helm values, passed as a list of HCL structures."
  type        = any
  default     = []
}

variable "app_autosync" {
  type = bool
  default = false
}

variable "dependency_ids" {
  type = map(string)

  default = {}
}

#######################
## Module variables
#######################
