locals {
  helm_values = [{
    traefik = {
      providers = {
        kubernetesCRD = {
          enabled = !var.app_skip_crds
        }
      }
      ressources = {
        limits = {
          cpu    = "250m"
          memory = "512Mi"
        }
        requests = {
          cpu    = "125m"
          memory = "256Mi"
        }
      }
      middlewares = {
        redirections = {
          withclustername = {
            permanent   = false
            regex       = "apps.${var.base_domain}"
            replacement = "apps.${var.cluster_name}.${var.base_domain}"
          }
        }
      }
    }
  }]
}
