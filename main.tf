module "traefik" {
  source = "./modules/traefik"
}

module "elastic" {
  source     = "./modules/efk"
  ns-elastic = "elastic"
  depends_on = [
    module.traefik
  ]
}
