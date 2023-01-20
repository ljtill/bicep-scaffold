// ------
// Scopes
// ------

targetScope = 'subscription'

// ---------
// Resources
// ---------

resource resourceGroup 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: settings.resourceGroup.name
  location: settings.resourceGroup.location
  properties: {}
  tags: settings.tags
}

// ----------
// Parameters
// ----------

param defaults object
param settings object
