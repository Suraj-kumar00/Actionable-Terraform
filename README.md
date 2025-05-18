# Actionable-Terraform

Learning Terraform by making projects

## Project Structure

- **Project_01**: Terraform Remote State Backend Using S3 and DynamoDB
- More projects coming soon...

## Installation Guide on local machine/server

[Official Hashicorp Terraform Installation Docs](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### How to install in Ubuntu 22.04 LTS using CLI

1. Install HashiCorp's Debian package repository

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```

2. Install the HashiCorp GPG key

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```

3. Verify the key's fingerprint

```bash
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```

4. Add the official HashiCorp repository to your system

```bash
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```

5. Download the package information from HashiCorp

```bash
sudo apt update && sudo apt upgrade
```

6. Install Terraform from the new repository

```bash
sudo apt-get install terraform
```

### Verify the Installation

```bash
terraform -help
```

### Check the version of Terraform

```bash
terraform --version
```

## AWS CLI Setup

[Official AWS CLI Installation Docs](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#cliv2-linux-install)

### Installation

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### Configure AWS CLI in your local development environment

```bash
aws configure
```

## Common Terraform Commands

```bash
# Format the configuration files
terraform fmt

# Initialize a Terraform working directory
terraform init

# Validate the configuration files
terraform validate

# Preview changes before applying
terraform plan

# Apply the changes required to reach the desired state
terraform apply

# Apply the changes required to reach the desired state without asking for confirmation
terraform apply --auto-approve

# Destroy all resources managed by the current configuration
terraform destroy

# Destroy all resources without asking for confirmation
terraform destroy --auto-approve

```

## Remote State Management

The project uses S3 for remote state storage and locking. See the project_01 for implementation details.
