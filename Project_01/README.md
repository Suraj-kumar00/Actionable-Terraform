# AWS Infrastructure Overview

This Terraform project creates a basic AWS infrastructure including a VPC, subnet, internet gateway, security group, and EC2 instance in the ap-south-1 region.

## Project Components

- **VPC**: Creates a Virtual Private Cloud with DNS support and hostnames enabled
- **Subnet**: Sets up a public subnet with auto-assigned public IPs
- **Internet Gateway**: Provides internet access to resources in the VPC
- **Route Table**: Configures routing to direct traffic through the internet gateway
- **Security Group**: Allows SSH access (port 22) and all outbound traffic
- **EC2 Instance**: Deploys a t2.micro instance with the specified AMI

## Remote State Configuration

This project uses an S3 bucket for remote state storage and locking:

- **S3 Bucket**: `my-terraform-state-bucket-the-devops-bro` in ap-south-1
- **State File Path**: `global/s3/terraform.tfstate`
- **State Locking**: Enabled via use_lockfile parameter

## What is AMI?

An AMI (Amazon Machine Image) in AWS is a pre-configured template used to launch instances (virtual machines). It includes the operating system (OS), application software, and other configurations needed to run an EC2 instance.

Here,
`ami`: Specifies the Amazon Machine Image (AMI) to use for the instance. The given ID (`ami-011899242bb902164`) corresponds to an Ubuntu image in the ap-south-1 region.

## Terraform Commands

```bash
# Initialize Terraform, download provider plugins, and set up the workspace
terraform init

# Create and show a detailed execution plan without making changes
terraform plan

# Apply the changes described in the execution plan to provision infrastructure
terraform apply

# Destroy and remove all Terraform-managed infrastructure
terraform destroy
```

## Outputs

After applying the configuration, you can access:
- EC2 instance public IP address via the `ec2_public_ip` output
