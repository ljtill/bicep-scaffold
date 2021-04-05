#!/bin/bash

# Authenticate
echo -e "Authenticating Azure Cli..."
az login \
    --service-principal \
    --tenant $ARM_TENANT_ID \
    --username $ARM_APPLICATION_ID \
    --password $ARM_CLIENT_SECRET

# Account
echo -e "Setting Azure subscription..."
az account set \
    --subscription $ARM_SUBSCRIPTION_ID