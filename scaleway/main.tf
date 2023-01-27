module "traefik" {
  source = "../nodeport/"

  cluster_name     = var.cluster_name
  base_domain      = var.base_domain
  argocd_namespace = var.argocd_namespace

  namespace = var.namespace

  app_autosync = var.app_autosync

  app_skip_crds = var.app_skip_crds

  helm_values = concat(local.helm_values, var.helm_values)
}
