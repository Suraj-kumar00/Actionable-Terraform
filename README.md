# Actionable-Terraform

Learning Terreform by making projects

[Official Hashicorp Terraform Installation Docs](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## How to install in Ubuntu 22.04 LTS using CLI

1. install HashiCorp's Debian package repository

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```

2. Install the HashiCorp GPG key.

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

```

3. Verify the key's fingerprint.

```bash
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

```

4. Add the official HashiCorp repository to your system.

```bash
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```

5. Download the package information from HashiCorp.

```bash
sudo apt update && sudo apt upgrade
```

6. Install Terraform from the new repository.

```bash
sudo apt-get install terraform
```

---

#### Varify the Installation:

```bash
terraform -help
```

#### Check the version of terraform:

```bash
terraform --version
```

### AWS CLI Installation:

[Official AWS CLI Installation Docs](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#cliv2-linux-install)

- To install the AWS CLI, run the following commands.

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

#### Configure AWS CLI in you local development environment

```bash
aws configure
```
