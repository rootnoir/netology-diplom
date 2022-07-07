terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "rootnoir-netology"
    region     = "ru-central1"
    key        = "stage/terraform-stage.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
