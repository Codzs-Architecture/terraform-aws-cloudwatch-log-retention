terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }

    archive = {
      source  = "hashicorp/archive"
      version = ">= 2.2.0"
    }

    local = {
      source  = "hashicorp/local"
      version = ">= 2.2.0"
    }
  }

  required_version = ">= 1.6.6"
}


