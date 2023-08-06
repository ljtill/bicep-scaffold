using './main.bicep'

param settings = {
  subscriptionId: ''
  resourceGroups: [
    {
      name: ''
      location: ''
      tags: {}
    }
  ]
  resources: {
    tags: {}
  }
}
