# Scaffold

Use this template to bootstrap a new repository with ready to use automation for deploying Azure services.

The workflow is compiled of three key stages - compile Bicep files, validate resource changes (what-if) and deploy resources. This workflow can be customized toy your needs and deployment scenarios. The workflow can also be integrated with environments if you have multiple application lifecycles.

Within the `src/` directory, you will find the following artifacts:

- `main.bicep`: This is the main Bicep file that will load the configuration metadata, resource group and resource modules.
- `configs/`: This directory contains the configuration files for the deployments. This could also be split into multiple lifecycles for different environments.
- `modules/`: This directory that contains the resource groups and resource modules.

### Getting Started

Azure Active Directory

- Create new application
- Setup federated credentials

Azure Resource Manager

- Create role assignment

GitHub Actions

- Add repository secrets
  - ARM_TENANT_ID
  - ARM_SUBSCRIPTION_ID
  - ARM_CLIENT_ID

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Azure Templates](https://docs.microsoft.com/azure/templates)
- [OpenID Connect](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)
