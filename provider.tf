terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.42.0"
    }
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "4.0.4"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}