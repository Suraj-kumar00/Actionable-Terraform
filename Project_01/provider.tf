# Define the required Terraform provider (AWS) and version constraints
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-the-devops-bro"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS provider with the region
provider "aws" {
  region = "ap-south-1"
}