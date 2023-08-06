// ------
// Scopes
// ------

targetScope = 'subscription'

// -------
// Modules
// -------

// Resource Groups
module groups './modules/groups.bicep' = {
  name: 'Microsoft.ResourceGroups'
  scope: subscription(settings.subscriptionId)
  params: {
    defaults: defaults
    settings: settings
  }
}

// Resources
module resources './modules/resources.bicep' = {
  name: 'Microsoft.Resources'
  scope: resourceGroup(settings.resourceGroups[0].name)
  params: {
    defaults: defaults
    settings: settings
  }
  dependsOn: [
    groups
  ]
}

// ---------
// Variables
// ---------

var defaults = loadJsonContent('defaults.json')

// ----------
// Parameters
// ----------

param settings object
