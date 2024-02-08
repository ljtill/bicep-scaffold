// -----
// Types
// -----

@export()
type metadata = {
  subscriptionId: string
  resourceGroups: resourceGroup[]
}

@export()
type resourceGroup = {
  name: string
  location: string
  tags: object
  resources: object[]
}
