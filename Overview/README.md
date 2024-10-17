## What is AMI?

An AMI (Amazon Machine Image) in AWS is a pre-configured template used to launch instances (virtual machines). It includes the operating system (OS), application software, and other configurations needed to run an EC2 instance.

Here,
`ami`: Specifies the Amazon Machine Image (AMI) to use for the instance. The given ID (`ami-011899242bb902164`) corresponds to an Ubuntu 20.04 LTS image in the `us-east-1` region.

## Teraform commands

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
