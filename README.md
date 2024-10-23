# DigitalOcean Kubernetes Terraform

This is a simple Terraform script to create a DigitalOcean Kubernetes cluster.

## Prerequisites

- Terraform
- DigitalOcean API token

## Usage

1. Clone the repository
2. Create a file named `terraform.tfvars` and add the following variables:

```hcl
do_token = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
cluster_name = "practice-cluster"
region = "nyc1"
kubernetes_version = "1.31.1-do.3"
node_pool_name = "practice-node-pool"
node_pool_size = "s-2vcpu-2gb"
node_pool_count = 3
```

3. Run `terraform init` to initialize the Terraform provider
4. Run `terraform apply` to create the cluster
5. Run `terraform output kubeconfig` to get the kubeconfig file
6. Run `kubectl --kubeconfig kubeconfig.yaml get nodes` to check the nodes

## Cleanup

To delete the cluster, run `terraform destroy`.
