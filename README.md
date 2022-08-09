# Bicep - Scaffold

Use this template to bootstrap a new repository with ready to use pipelines for deploying Azure services.

This template includes the integrated GitHub Actions to compile Bicep source, validate templates and deploy.

Within the `src/` folder you will find the core `main.bicep` with an example module. The `main.bicep` is set to deploy at subscription scope as well as the `Resources` module for Resource Groups. Define additional modules and set the `targetScope` to deploy resources.

## Pre-requisites

Create a Service Principal and assign the necessary scope permissions.

- ARM_TENANT_ID
- ARM_SUBSCRIPTION_ID
- ARM_CLIENT_ID
- ARM_CLIENT_SECRET

## Reference

[Bicep](https://github.com/Azure/bicep)  
[Templates](https://docs.microsoft.com/azure/templates/)
