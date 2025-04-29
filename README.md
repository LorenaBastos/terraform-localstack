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
