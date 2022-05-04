resource "helm_release" "kibana" {
  chart      = "kibana"
  name       = "kibana"
  namespace  = "elastic"
  repository = "https://helm.elastic.co"

  # values = [
  #   file("${path.module}/kibana-values.yaml")
  # ]
}

