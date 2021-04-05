#!/bin/bash

# Remove
echo -e "Removing Resource Groups..."
for i in $(az group list --tag Provisioner=Bicep --query '[].name' | jq -r '.[]')
do
 az group delete -n $i --yes
done