variable "aws_region" {
  description = "AWS region to deploy resources in"
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  default     = "my-vpc"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  default     = "my-subnet"
}

variable "availability_zone" {
  description = "Availability zone for subnet"
  default     = "ap-south-1a"
}

variable "igw_name" {
  description = "Name tag for the internet gateway"
  default     = "my-igw"
}

variable "route_table_name" {
  description = "Name tag for the route table"
  default     = "my-rt"
}

variable "sg_name" {
  description = "Name tag for the security group"
  default     = "my-sg"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  default     = "ami-0e35ddab05955cf57"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ec2_name" {
  description = "Name tag for the EC2 instance"
  default     = "my-ec2"
}
