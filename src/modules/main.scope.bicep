// -------
// Imports
// -------

import * as functions from '../functions/main.bicep'
import * as types from '../types/main.bicep'

// ------
// Scopes
// ------

targetScope = 'subscription'

// ----------
// Parameters
// ----------

param resourceGroup types.resourceGroup

// ---------
// Resources
// ---------

resource group 'Microsoft.Resources/resourceGroups@2024-11-01' = {
  name: resourceGroup.name
  location: resourceGroup.location
  properties: {}
  tags: resourceGroup.tags
}

// -------
// Modules
// -------

module resources './main.resources.bicep' = {
  scope: group
  params: {
    resources: resourceGroup.resources
  }
}
