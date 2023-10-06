# Déclaration de la version du provider Terraform
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

# Configuration du provider Docker
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Création de l'image Docker
resource "docker_image" "build" {
  name         = "tp_terraform:latest"
  build {
    context = "../app"
    dockerfile = "Dockerfile" 
  }
}

# Création du conteneur Docker
resource "docker_container" "container" {
  name  = "tp_terraform"
  image = docker_image.build.name
  ports {
    internal = 8000
    external = 8080 # Port externe pour accéder à votre application
  }
}
