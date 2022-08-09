#!/bin/bash

# Validate
echo -e "Validating Azure template..."
az deployment sub what-if \
    --name 'Microsoft.Bicep' \
    --location 'uksouth' \
    --template-file ./src/main.json
