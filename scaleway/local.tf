locals {
  helm_values = [{
    traefik = {
      providers = {
        kubernetesCRD = {
          enabled = !var.app_skip_crds
        }
      }
    }
  }]
}
