# Azure Infrastructure with Terraform

This project deploys a small Azure infrastructure using Terraform.

## Components

- Resource Group
- Virtual Network
- Subnet
- Network Security Group with SSH rule
- Public IP
- Network Interface
- Linux Virtual Machine

## Goal

The goal of this project is to practice:

- Azure infrastructure basics
- Infrastructure as Code (IaC)
- Terraform workflow
- Network and security fundamentals
- VM deployment and SSH access

## Architecture

The deployment creates:

- one resource group in Azure
- one virtual network with one subnet
- one network security group allowing SSH (TCP/22)
- one public IP and network interface
- one Ubuntu Linux VM

## Files

- `provider.tf` - provider configuration
- `main.tf` - resource group
- `network.tf` - virtual network and subnet
- `security.tf` - NSG and SSH rule
- `compute.tf` - public IP, NIC and VM
- `variables.tf` - variable definitions
- `terraform.tfvars` - environment-specific values
- `outputs.tf` - Terraform outputs

## Requirements

- Terraform
- Azure CLI
- Azure subscription
- SSH key pair

## Usage

Initialize Terraform:

```bash
terraform init
Validate configuration:

terraform validate

Preview changes:

terraform plan

Deploy infrastructure:

terraform apply

Destroy infrastructure after testing:

terraform destroy
Notes
The VM size used in this project is Standard_D2s_v3.
Costs can occur while resources are running.
Always destroy resources after testing to avoid unnecessary charges.
Learning Outcome

With this project I practiced deploying Azure infrastructure with Terraform, including networking, security, compute resources and SSH connectivity.