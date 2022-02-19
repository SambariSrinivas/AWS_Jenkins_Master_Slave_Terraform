terraform {
  required_version = "~>1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}