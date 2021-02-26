param name string = 'uniquestorage4029874298742'
param location string = 'northcentralus'

var storageSku = 'Standard_LRS' 

resource storageaccount 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: name
  location: location
  kind: 'Storage' 
  sku:{
    name:storageSku
  }
  properties: {
    allowBlobPublicAccess:false
  }
}

output id string = storageaccount.id 