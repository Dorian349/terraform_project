# Version du provider Terraform pour Docker
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

# Configuration du provider Docker avec un hôte local
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Ressource "docker_image" pour construire l'image Docker
resource "docker_image" "build" {
  name          = "nom_de_votre_image"
  build_context = "${path.module}/.."
  dockerfile    = "${path.module}/../Dockerfile"
}

# Ressource "docker_container" pour déployer le conteneur à partir de l'image
resource "docker_container" "container" {
  name  = "nom_de_votre_conteneur"
  image = docker_image.build.name
  ports {
    internal = 3000
    external = 8080
  }
}
