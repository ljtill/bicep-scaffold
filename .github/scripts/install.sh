#!/bin/bash

# Create
echo -e "Create Bicep directory..."
mkdir -p /home/runner/.bicep/bin/

# Download
echo -e "Downloading Bicep binary..."
curl -Lo bicep https://github.com/Azure/bicep/releases/latest/download/bicep-linux-x64

# Permission
echo -e "Updating Bicep permissions..."
chmod +x ./bicep

# Move
echo -e "Moving Bicep binary..."
mv ./bicep /home/runner/.bicep/bin/bicep

# Export
echo -e "Export Bicep path..."
echo "/home/runner/.bicep/bin" >> $GITHUB_PATH
