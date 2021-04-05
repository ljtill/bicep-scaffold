// ------
// Scopes
// ------

targetScope = 'subscription'

// ---------
// Modules
// ---------

// Resources
module resources './modules/resources/main.bicep' = {
  name: 'Microsoft.Resources'
  scope: subscription()
  params: {
    location: location
  }
}

// ---------
// Variables
// ---------

var location = {
  name: ''
  prefix: ''
}
