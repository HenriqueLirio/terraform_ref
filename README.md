# Terraform Reference Architecture

This repository contains a reference architecture for working with Infrastructure as Code (IaC) using Terraform and Azure DevOps. The architecture is designed to provide a solid foundation for automated infrastructure deployment on Microsoft Azure, making it easier to configure, manage, and version resources.

## Objective

The objective of this project is to provide a starting point for implementing IaC with Azure DevOps and Terraform. It provides an organized and modularized framework for creating and managing resources in Azure.

## Key Components

The project utilizes the following key components:

1. **Terraform**: Terraform is an IaC tool that enables declarative description and provisioning of infrastructure resources. It is used to create, modify, and delete Azure resources.
2. **Azure DevOps**: Azure DevOps is a set of tools provided by Microsoft to facilitate software development and deployment. In this project, Azure DevOps is used to create CI/CD pipelines and manage the deployment steps of Terraform.

## Project Structure

The project is structured as follows:

```
.
├── Modules
│   ├── Groups
│   │   ├── Teams
│   │   ├── _outputs.tf
│   │   ├── _providers.tf
│   │   └── <team_name>.tf
│   ├── Projects
│   │   ├── <project-name>
│   │   │   ├── Teams
│   │   │   │   ├── _outputs.tf
│   │   │   │   ├── _providers.tf
│   │   │   │   └── <group_name>.tf
│   │   │   ├── Repositories
│   │   │   │   ├── _outputs.tf
│   │   │   │   ├── _providers.tf
│   │   │   │   ├── _variables.tf
│   │   │   │   └── <repository_name>.tf
│   │   │   └── main.tf
│   │   └── main.tf
│   ├── Users
│   │   ├── _outputs.tf
│   │   ├── _providers.tf
│   │   └── users.tf
│   └── ...
└── main.tf
```