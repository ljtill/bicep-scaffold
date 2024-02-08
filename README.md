# Scaffold

Use this template to quickly set up a new repository with pre-configured automation for deploying Azure services.

The workflow consists of three main stages: build, test, and deploy. These stages are flexible and can be adjusted to suit various deployment scenarios.

In the `src/` directory, you'll find the following components:

- `main.bicep`: This Bicep file orchestrates the deployment of resource groups and resources.
- `functions/`: This directory contains a set of reusable functions, such as resource name generation.
- `modules/`:  In this directory, you'll find reusable scope and resource modules.
- `parameters/`: This directory holds parameter files for environment-specific configurations.
- `types/`: Contains type definitions for both templates and parameter files.

---

## Getting Started

### Deployment

#### Azure CLI

```bash
az stack sub create \
    --name 'default' \
    --template-file './src/main.bicep' \
    --parameters './src/main.bicepparam' \
    --deny-settings-mode 'none' \
    --delete-all \
    --yes
```

```bash
az stack sub delete \
    --name 'default' \
    --delete-all \
    --yes
```

#### GitHub Actions

Entra ID - Application


- Browse to the Entra admin center
- Navigate to the 'Identity', 'Applications', 'App registrations' blade
- Select 'New registration' and provide a Name for the application
- Select the newly created application and select 'Certificates & secrets'
- Select 'Federated credentials' and 'Add credential'
- Choose 'GitHub Actions deploying Azure resources'
- Provide the 'Organization (username)' and Repository for the credential
- Select 'Entity type' - Branch and provide 'main'
- Repeat process for 'Entity type' - Pull Request

Azure Resource Manager - Role Assignment

- Navigate to the Subscription in the Azure portal
- Select 'Access control (IAM)' and 'Add' - 'Add role assignment'
- Select Role - Contributor and select 'Members'
- Provide the 'Name' of the application from the previous steps

GitHub Actions - Secrets

- Navigate to 'Settings' on the repository
- Select 'Secrets' and 'Actions' link
- Select 'New repository secret' and create secrets for the following:
  - AZURE_TENANT_ID
  - AZURE_SUBSCRIPTION_ID
  - AZURE_CLIENT_ID

---

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Templates](https://docs.microsoft.com/azure/templates)
