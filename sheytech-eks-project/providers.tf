terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }

    backend "s3" {
  bucket                    = "sheytech-eks-project-state-store"
  key                       = "state/terraform.tf.state-locking"
  region                    = "us-east-1"
  dynamodb_table            = "sheytech-test-locks"
  encrypt                   = false
  s3_versioning             = "Enabled"
  enable_lifecycle_rule     = false
  # profile                   = "default"
}
}




provider "aws" {
  region = "us-east-1"
}

