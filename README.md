# Scaffold

Use this template to bootstrap a new repository with ready to use automation for deploying Azure services.

The workflow comprises of three key stages - build Bicep files, validate resource changes (what-if) and deploy resources. These stages can be customized to meet your needs and deployment scenarios.

Within the `src/` directory, you will find the following artifacts:

- `main.bicep` This is the main Bicep file that will load the configuration and resource modules.
- `configs/` This directory contains the configuration files for the deployments.
- `modules/` This directory that contains the resource groups and resource modules.

### Getting Started

Azure Active Directory

- Create new application
- Setup federated credentials

Azure Resource Manager

- Create role assignment

GitHub Actions

- Add repository secrets
  - AZURE_TENANT_ID
  - AZURE_SUBSCRIPTION_ID
  - AZURE_CLIENT_ID

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Azure Templates](https://docs.microsoft.com/azure/templates)
- [OpenID Connect](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)
