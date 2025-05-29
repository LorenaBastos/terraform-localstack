# :rocket: terraform-localstack
This repository contains an Infrastructure as Code (IaC) project designed using Terraform, LocalStack, Ansible, and GitHub Actions. It includes a FinOps workflow powered by Infracost, as well as security and compliance checks using TFSec and Checkov.

## 🧰Tech Stack
- Terraform – Provision cloud infrastructure as code.
- LocalStack – Run a fully functional local AWS cloud stack for testing and development.
- Ansible – Automate configuration and software deployment.
- GitHub Actions – Automate workflows for CI/CD, security checks, and FinOps.
- Infracost – Estimate cloud costs in pull requests (FinOps).
- TFSec – Static analysis for Terraform templates.
- Checkov – Infrastructure security and compliance scanner.

## :arrows_counterclockwise: CI/CD with GitHub Actions
The repository uses GitHub Actions to automate:

```terraform.yml``` – Validates Terraform, runs plan, apply (optional).

```finops-infracost.yml``` – Adds cost estimates in PRs.

```security-checks.yml``` – Runs TFSec and Checkov for code security.

## 💰FinOps with Infracost
This project integrates Infracost to show cloud cost changes in pull requests. This helps drive financial accountability and decision-making.

**Example PF Comment:**
```
Monthly cost estimate for this change: +$25.00  
Previous cost: $75.00  
New cost: $100.00
```
## 🔐 Security & Compliance
TFSec and Checkov automatically scan the Terraform templates to ensure compliance with security best practices.

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
