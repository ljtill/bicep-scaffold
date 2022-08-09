# Scaffold

Use this template to bootstrap a new repository with ready to use workflows for deploying Azure services.

This template includes the integrated GitHub Actions to compile Bicep source, validate templates and deploy.

Within the `src/` folder you will find the core `main.bicep` with an example module. The `main.bicep` is set to deploy at subscription scope as well as the `Resources` module for Resource Groups. Define additional modules and set the `targetScope` to deploy resources.

### Pre-requisites

Create an Azure Active Directory application and a service principal.

Add federated credentials for the Azure Active Directory application.

Create GitHub secrets for storing Azure configuration.

- ARM_TENANT_ID
- ARM_SUBSCRIPTION_ID
- ARM_CLIENT_ID
- ARM_CLIENT_SECRET

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Azure Templates](https://docs.microsoft.com/azure/templates)
- [OpenID Connect](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)
