resource "helm_release" "traefik" {
  chart      = "traefik"
  name       = "traefik"
  namespace  = "kube-system"
  repository = "https://helm.traefik.io/traefik"
  timeout    = 5000

  # values = [
  #   file("${path.module}/patch-traefik.yaml")
  # ]
}
