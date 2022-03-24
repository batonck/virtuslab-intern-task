variable "docker_image" {
  type        = string
  description = "docker image to pull from dockerhub"
}

variable "internal_port" {
  type = number
  description = "internal port"
}

variable "external_port" {
  type = number
  description = "external port"
}

variable "ip_address" {
  type = string
  description = "ip_address"
}