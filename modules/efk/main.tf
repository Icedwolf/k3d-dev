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

resource "helm_release" "kibana" {
  chart      = "kibana"
  name       = "kibana"
  namespace  = var.ns-elastic
  repository = "https://helm.elastic.co"

  # values = [
  #   file("${path.module}/kibana-values.yaml")
  # ]
}

# fix values - machine-id
# resource "helm_release" "fluentbit" {
#   chart      = "fluent-bit"
#   name       = "fluent-bit"
#   namespace  = var.ns-elastic
#   repository = "https://fluent.github.io/helm-charts"

#   values = [
#     file("${path.module}/fbit-values.yaml")
#   ]
# }
