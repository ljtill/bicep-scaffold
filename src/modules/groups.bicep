// ------
// Scopes
// ------

targetScope = 'subscription'

// ---------
// Resources
// ---------

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: settings.resourceGroups[0].name
  location: settings.resourceGroups[0].location
  properties: {}
  tags: settings.resourceGroups[0].tags
}

// ----------
// Parameters
// ----------

param defaults object
param settings object
