terraform {
  required_version = "~>1.6.0"
  backend "s3" {
  }
}

provider "aws" {
  region = var.region
}