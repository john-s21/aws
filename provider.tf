terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.7.2"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}