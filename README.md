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
- Infracost – FinOps tool to estimate and track cloud infrastructure costs in pull requests


## 💰FinOps with Infracost
This project integrates Infracost to show cloud cost changes in pull requests. This helps drive financial accountability and decision-making.

**Example PF Comment:**
```
Monthly cost estimate for this change: +$25.00  
Previous cost: $75.00  
New cost: $100.00
```
