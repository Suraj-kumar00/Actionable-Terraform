# Define the required Terraform provider (AWS) and version constraints
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # AWS provider source
      version = "~> 3.0"         # Use any AWS provider version starting from 3.0 but less than 4.0
    }
  }
}

# Configure the AWS provider with the region
provider "aws" {
  region = "us-east-1"  # AWS region where the resources will be deployed
}

# Define an AWS EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-011899242bb902164"  # Ubuntu 20.04 LTS AMI for us-east-1 region
  instance_type = "t2.micro"               # Small instance type (eligible for free tier)
}
