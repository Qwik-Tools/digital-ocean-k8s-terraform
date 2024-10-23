variable "do_token" {
  description = "DigitalOcean API token"
  type = string
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "cluster_name" {
  description = "Name of the cluster"
  type = string
  default = "practice-cluster"
}

variable "region" {
  description = "Region of the cluster"
  type = string
  default = "nyc1"
}

variable "kubernetes_version" {
  description = "Version of the cluster"
  type = string
  default = "1.31.1-do.3"   
}

variable "node_pool_name" {
  description = "Name of the node pool"
  type = string
  default = "practice-node-pool"
}

variable "node_pool_size" {
  description = "Size of the node pool"
  type = string
  default = "s-2vcpu-2gb"
}

variable "node_pool_count" {
  description = "Count of the node pool"
  type = number
  default = 3
}   
