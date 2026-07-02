terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.5.0" # Upgraded to the latest version to support Docker API 1.44+
    }
  }
}

provider "docker" {
  # Leave empty; version 4.x natively handles the connection paths for modern Docker Desktop
}

# Pulls the latest Nginx image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Provisions the Docker container mapping local port 8000 to internal port 80
resource "docker_container" "nginx" {
  name  = "elevate-labs-container"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8000
  }
}