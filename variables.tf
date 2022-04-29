variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "ns-system" {
  type    = string
  default = "kube-system"
}
