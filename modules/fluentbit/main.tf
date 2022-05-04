# fix values - machine-id
resource "helm_release" "fluentbit" {
  chart      = "fluent-bit"
  name       = "fluent-bit"
  namespace  = "elastic"
  repository = "https://fluent.github.io/helm-charts"

  values = [
    file("${path.module}/fbit-values.yaml")
  ]
}
