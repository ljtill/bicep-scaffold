// -------
// Imports
// -------

import * as functions from './functions/main.bicep'
import * as types from './types/main.bicep'

// ------
// Scopes
// ------

targetScope = 'subscription'

// -------
// Modules
// -------

module scope './modules/main.scope.bicep' = [for resourceGroup in metadata.resourceGroups: {
  scope: subscription(metadata.subscriptionId)
  params: {
    resourceGroup: resourceGroup
  }
}]

// ----------
// Parameters
// ----------

param metadata types.metadata
