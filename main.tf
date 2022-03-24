terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "virtuslab" {
  name = "virtuslab"
  build {
    path = "."
    tag  = ["virtuslab:1.0"]
    label = {
      author : "mgocal"
    }
  }
}

resource "docker_container" "virtuslab-task" {
  image = var.docker_image
  name  = "virtuslab-task"
  restart = "always"
  volumes {
    container_path  = "/myapp"
    host_path = "/home/matiaks/Dokumenty/terraform-test-app" 
    read_only = false
  }
  ports {
    internal = var.internal_port
    external = var.external_port
    ip = var.ip_address
  }

}