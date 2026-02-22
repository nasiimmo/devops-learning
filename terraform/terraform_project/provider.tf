terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.31.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-nasiim"
    key = "terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  # Configuration options
  region = "eu-west-1"
}

