terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  # backend "s3" {
  #   bucket         = "my-terraform-remote-backend-s3"
  #   region         = "us-east-1"
  #   key            = "mean-stack-application/dev/eks-terraform/terraform.tfstate"
  #   dynamodb_table = "eks-terraform-lock-files"
  #   encrypt        = true
  # }
}

provider "aws" {
  region     = var.aws-region
  # access_key = var.access_key
  # secret_key = var.secret_key
}
