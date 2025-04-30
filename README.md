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

- Terraform plan and apply on pull requests or merges.
- Ansible playbook validation.
- LocalStack environment testing.
- Workflow files are under .github/workflows/.
- Infracost – FinOps tool to estimate and track cloud infrastructure costs in pull requests

## 💰FinOps with Infracost
This project integrates Infracost to show cloud cost changes in pull requests. This helps drive financial accountability and decision-making.

**Example PF Comment:**
```
Monthly cost estimate for this change: +$25.00  
Previous cost: $75.00  
New cost: $100.00
```
## 🔐 Security & Compliance
TFSec and Checkov automatically scan your Terraform templates to ensure compliance with security best practices.
