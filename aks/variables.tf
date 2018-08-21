variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "aks"
}

variable "cluster_name" {
  default = "aks"
}

variable "dns_prefix" {
  default = "aks"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}
