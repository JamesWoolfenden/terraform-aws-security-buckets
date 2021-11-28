terraform {
  required_providers {
    aws = {
      version = "3.67.0"
      source  = "hashicorp/aws"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
  required_version = ">=0.14.8"
}
