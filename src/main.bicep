// ------
// Scopes
// ------

targetScope = 'subscription'

// -------
// Modules
// -------

module groups './modules/groups/resources.bicep' = {
  name: 'Microsoft.Resources'
  scope: subscription(config.subscription)
  params: {
    config: config
  }
}

module components './modules/components/resources.bicep' = {
  name: 'Microsoft.Resources'
  scope: resourceGroup(config.resourceGroup)
  params: {
    config: config
  }
}

// ---------
// Variables
// ---------

var config = loadJsonContent('configs/main.json')
var defaults = loadJsonContent('defaults.json')
