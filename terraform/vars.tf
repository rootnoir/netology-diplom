## Edit this section:

variable "folder_id" {
  type = string
  default = "b1guu4qkcnpm0mu1up6r"
}

variable "core_fraction" {
  type = number
  default = 20
}

variable "preemptible" {
  type = bool
  default = true
}

variable "acme_server" {
  type = string
  default = "letsencrypttest"
}

## Don't touch it =) #########
variable "zone" {
  type = string
  default = "ru-central1-a"
}

variable "zone2" {
  type = string
  default = "ru-central1-b"
}

variable "image_id" {
  type = string
  default = "fd80rnhvc47031anomed"
}

variable "subnet1" {
  type = tuple([string])
  default = (["192.168.10.0/24"])
}

variable "subnet2" {
  type = tuple([string])
  default = (["192.168.11.0/24"])
}

variable "dns_ttl" {
  type = number
  default = 60
}

variable "mydomain" {
  type = string  
  default = "rootnoir.ru"
}
