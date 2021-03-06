provider "local" {}

# Start a container
resource "docker_container" "application" {
  image    = docker_image.application.latest
  must_run = true
  name     = "application"

  ports {
    internal = 8080

    external = 8080
  }
}

# Start a container
   resource "docker_container" "nginx" {
     image    = "nginx"
     must_run = true
     name     = "nginx"
   
     ports {
      internal = 80
  
      external = 80
    }
 }

# Find the latest Ubuntu precise image.
resource "docker_image" "application" {
  name = "pengbai/docker-supermario"
}

terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
    local = {
      source = "hashicorp/local"
    }
  }
  required_version = ">= 0.13"
}