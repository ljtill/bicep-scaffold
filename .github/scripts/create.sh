#!/bin/bash

# Deploy
echo -e "Deploying Azure template..."
az deployment sub create \
    --name 'Microsoft.Bicep' \
    --location 'uksouth' \
    --template-file ./src/main.json
