resource "digitalocean_kubernetes_cluster" "foo" {
  name   = var.cluster_name
  region = var.region
  version = var.kubernetes_version

  node_pool {
    name       = var.node_pool_name
    size       = var.node_pool_size
    node_count = var.node_pool_count
  }
}

resource "local_file" "kubeconfig" {
  content = digitalocean_kubernetes_cluster.foo.kube_config.0.raw_config
  filename = "kubeconfig.yaml"
}
