# :rocket: terraform-localstack
This repository contains an infrastructure automation setup using Terraform, LocalStack, Ansible, and GitHub Actions. The goal of this project is to provision and manage cloud infrastructure locally and automate deployment pipelines in a reproducible, testable, and scalable way.

## 🧰Tech Stack
- Terraform – Infrastructure as Code (IaC) for defining cloud resources.
- LocalStack – Local AWS cloud emulator for testing infrastructure.
- Ansible – Configuration management and provisioning.
- GitHub Actions – CI/CD for automation of workflows.

## :arrows_counterclockwise: CI/CD with GitHub Actions
The repository uses GitHub Actions to automate:

- Terraform plan and apply on pull requests or merges.
- Ansible playbook validation.
- LocalStack environment testing.
- Workflow files are under .github/workflows/.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dev_module"></a> [dev\_module](#module\_dev\_module) | ./modules/dev | n/a |
| <a name="module_prod_module"></a> [prod\_module](#module\_prod\_module) | ./modules/prod | n/a |
| <a name="module_qa_module"></a> [qa\_module](#module\_qa\_module) | ./modules/qa | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI ID for the EC2 instance | `string` | `"ami-0d26eb3972b7f8c96"` | no |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | Subnet ID for network interface | `string` | `"subnet-76a8163a"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the EC2 instance | <pre>object({<br/>   name = string<br/>   env  = string<br/> })</pre> | <pre>{<br/>  "env": "Dev",<br/>  "name": "My Virtual Machine"<br/>}</pre> | no |
| <a name="input_type"></a> [type](#input\_type) | Instance type for the EC2 instance | `string` | `"t2.micro"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->