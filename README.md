# VMware K3s Starter

A set of templates to get you started using Terraform's vSphere provider, Packer, and K3s to build and manage a  Kubernetes cluster.

## Requirements

- [Terraform](https://www.terraform.io/) 0.14+

## Getting Started

- Clone the repository:
  - `git clone git@github.com:thehouseplant/vmware-k3s-starter`
- Initialize Terraform:
  - `terraform init`
- Validate templates
  - `terraform validate`
- Show changes applied to current deployment:
  - `terraform plan`
- If the changes look good, apply them:
  - `terraform apply`
