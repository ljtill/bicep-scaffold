# Scaffold

Use this template to bootstrap a new repository with ready to use automation for deploying Azure services.

The workflow is comprised of three stages - build, validate and deploy. These stages can be customized for each unique environment needs and deployment scenarios.

Within the `src/` directory, there are the following artifacts:

- `main.bicep` This Bicep file that will load the local configuration and resource modules.
- `configs/` This contains the configuration files for the deployment and environments.
- `modules/` This contains the base resource group and resource modules to quickly get started.

### Getting Started

Azure Active Directory - Application - Reader

- Navigate to the 'App Registration' blade wihin the Azure portal.
- Select 'New registration' and provide a Name for the application.
- Select the newly created application and select 'Certificates & secrets'
- Select 'Federated Credentials' and 'Add credential'
- Provide the 'Organization (username)' and Repository for the credential
- Select 'Entity type' - Pull Request and provide a 'Name' for the credential
- Repeat this process but replace the 'Entity type' - Branch and provide 'main'

Azure Active Directory - Application - Contributor

- Repeat the above process but use the 'Entity type' - Branch and provide 'main'

Azure Resource Manager - Role Assignment - Reader

- Navigate to the Subscription in the Azure portal.
- Select 'Access control (IAM)' and 'Add' - 'Add role assignment'
- Select Role - Reader and select 'Members'
- Provide the 'Name' of the application from the previous steps

Azure Resource Manager - Role Assignment - Contributor

- Repeat the above process but select the Contributor role and the contributor app

GitHub Actions - Secrets

- Navigate to 'Settings' on the repository
- Select 'Secrets' and 'Actions' link
- Select 'New repository secret' and create a secret for the following:
  - AZURE_TENANT_ID
  - AZURE_SUBSCRIPTION_ID
  - AZURE_READER_CLIENT_ID
  - AZURE_CONTRIBUTOR_CLIENT_ID

> The reason for the two AAD applications is to provide the least priviledge permissions at certain points in the development stage. For example, when a new Pull Request is created the Build job is trigger which compiles the Bicep files to ensure there aren't any syntactical error, followed by this the the workflows will run the generate template against ARM with the What-If parameter which allows the developer to see what changes against the infrastructure there will be with the Pull Request. Upon approving, squashing and merging the Deploy workflow will run and make those changes into the environment.

### Development Process

- Create new feature / fix branch, commit changes and push to the repository
- Create pull request from the new branch into default branch (main)
- The workflows will trigger and run the build and validate jobs
  - The build process will use the `az bicep build` command to check that the template is valid
  - The validate process will use the `az deployment sub create...what-if` command to generate a list of proposed changes (create / update / delete / ignore)
- Upon merging the pull request into the default branch (main), the deploy workflow will be triggered
  - The deploy workflow will use the `az deployment sub create` command to start a new resource deployment

If Branch Protection is configured against the default branch with Status Checks enabled, copy the following file in the `workflows/` directory

`.github/examples/status.yml`

This is due to the [Required Status Checks][1] restricting the ability to merge the pull request into the default branch (main) as certain conditions (path filters) haven't been met to trigger.

[1]: https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/troubleshooting-required-status-checks

### Links

- [Bicep](https://github.com/Azure/bicep)
- [Azure Templates](https://docs.microsoft.com/azure/templates)
- [OpenID Connect](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)
