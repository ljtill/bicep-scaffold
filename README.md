# Scaffold

Use this template to bootstrap a new repository with ready to use automation for deploying Azure services.

The workflow is comprised of three stages - build, test and deploy. These stages can be customized as needed for different deployment scenarios.

Within the `src/` directory, there are the following artifacts:

- `main.bicep` This Bicep file that will load defaults, user-defined settings and resource modules
- `defaults.json` This JSON file provides Bicep with a set of re-usable default values
- `modules/` This contains the base resource group and resource modules to quickly get started
- `parameters/` This contains the parameter files for the deployment and environments

---

## Getting Started

### Deployment

#### GitHub Actions

Azure Active Directory - Application

- Navigate to the 'App Registration' blade wihin the Azure portal
- Select 'New registration' and provide a Name for the application
- Select the newly created application and select 'Certificates & secrets'
- Select 'Federated Credentials' and 'Add credential'
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

#### Local Commands

```bash
az deployment sub create \
  --name '' \
  --location '' \
  --template-file './src/main.bicep' \
  --parameters './src/main.bicepparam'
```

```powershell
New-AzSubscriptionDeployment `
  -Name "" `
  -Location "" `
  -TemplateFile "./src/main.bicep" `
  -TemplateParameterFile "./src/main.bicepparam"
```

---

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Templates](https://docs.microsoft.com/azure/templates)
