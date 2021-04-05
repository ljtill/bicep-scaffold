// ------
// Scopes
// ------

targetScope = 'subscription'

// ---------
// Resources
// ---------

resource resource_group 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: '${location.prefix}-RG0'
  location: location.name
  properties: {}
  tags: tags
}

// ---------
// Variables
// ---------

var tags = {
  Provisioner: 'Bicep'
}

// ---------
// Parameters
// ---------

param location object
