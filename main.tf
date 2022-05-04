module "traefik" {
  source = "./modules/traefik"
}

module "elastic" {
  source     = "./modules/elastic"
  ns-elastic = "elastic"
  depends_on = [
    module.traefik
  ]
}

module "kibana" {
  source = "./modules/kibana"
  depends_on = [
    module.elastic
  ]
}

module "fluentbit" {
  source = "./modules/fluentbit"
  depends_on = [
    module.kibana
  ]
}
