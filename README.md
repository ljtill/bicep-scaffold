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

### Azure CLI

```bash
az stack sub create \
    --name 'Scaffold' \
    --location 'uksouth' \
    --template-file './src/main.bicep' \
    --parameters './src/parameters/main.bicepparam' \
    --action-on-unmanage 'deleteAll' \
    --deny-settings-mode 'denyWriteAndDelete'
```

```bash
az stack sub delete \
    --name 'Scaffold' \
    --delete-all
```

### GitHub Actions

**Entra ID**
- Login:
  - Go to [Entra](https://entra.microsoft.com/).

- Register App:
  - Navigate to **Identity > Applications > App registrations**.  
  - Click **New registration** and name your app.

- Configure Credentials:
  - In your app, go to **Certificates & secrets > Federated credentials**.  
  - Click **Add credential**, select *GitHub Actions deploying Azure resources*, and fill in the details  
    (Organization, Repository, etc.).

**Azure Resource Manager (ARM)**
- Login:
  - Visit the [Azure Portal](https://portal.azure.com).

- Set Scope:
  - Navigate to the desired scope (Subscription, Resource Group, etc.).

- Role Assignment:
  - Under **Access control (IAM)**, click **Add role assignment**.  
  - Select the appropriate **Role**.  
  - Add your app by name.

**GitHub Actions**
- Repository Settings:
  - Open your repo on [GitHub](https://github.com).  
  - Go to **Settings > Security > Secrets and variables > Actions > Secrets**.

- Add Secrets:
  - Create the following secrets:  
    - `AZURE_TENANT_ID`  
    - `AZURE_SUBSCRIPTION_ID`  
    - `AZURE_CLIENT_ID`

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Templates](https://docs.microsoft.com/azure/templates)
