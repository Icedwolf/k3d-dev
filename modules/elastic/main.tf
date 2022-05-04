resource "helm_release" "elasticsearch" {
  chart            = "elasticsearch"
  create_namespace = true
  name             = "elasticsearch"
  namespace        = var.ns-elastic
  repository       = "https://helm.elastic.co"

  values = [
    file("${path.module}/elastic-values.yaml")
  ]
}
