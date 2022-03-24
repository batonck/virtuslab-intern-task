variable "docker_image" {
  type        = string
  description = "docker image to pull from dockerhub"
  default = "virtuslab:1.0"
}

variable "internal_port" {
  type = number
  description = "internal port"
  default = 80
}

variable "external_port" {
  type = number
  description = "external port"
  default = 8081
}

variable "ip_address" {
  type = string
  description = "ip_address"
  default = "localhost"
}