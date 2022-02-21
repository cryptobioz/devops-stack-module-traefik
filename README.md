# devops-stack-module-traefik

A [DevOps Stack](https://devops-stack.io) module to deploy and configure [Traefik](https://traefik.io/).


## Usage

```hcl
module "ingress" {
  source = "git::https://github.com/camptocamp/devops-stack-module-traefik.git/"

  cluster_name     = var.cluster_name
  argocd_namespace = module.cluster.argocd_namespace
  base_domain      = module.cluster.base_domain
}
```

## Submodules

### Default

- Description: Simple installation and configuration of Traefik as Ingress Controller.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git/`


### EKS

- Description: Configure Traefik for EKS using a NodePort setup.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//eks`


### SKS

- Description: Configure Traefik for SKS using a NodePort setup.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//sks`


### NodePort

- Description: Configure Traefik to be set behind an L4 static load balancer.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//nodeport`


### AKS

- Description: Configure Traefik for Azure AKS.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//aks`
- Extra variables:
   - `azure_dns_label_name`


### Scaleway

- Description: Configure Traefik for Scaleway (Kapsule/Kosmos) using a NodePort setup.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//scaleway`
