variable "kube_config" {
  type    = string
  default = "~/.kube/kb"
}

variable "ns-system" {
  type    = string
  default = "kube-system"
}
