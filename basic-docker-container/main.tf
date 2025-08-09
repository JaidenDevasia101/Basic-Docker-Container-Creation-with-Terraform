terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.13.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine" # Windows Docker Desktop
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "demo"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = 8000
  }
}
