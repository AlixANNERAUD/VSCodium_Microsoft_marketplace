#!/bin/bash

# Backup the original product.json file
cp /usr/share/codium/resources/app/product.json /usr/share/codium/resources/app/product.json.backup

# Replace the serviceUrl, itemUrl, cacheUrl, controlUrl, and recommendationsUrl with the VS Code Marketplace URLs
cat /usr/share/codium/resources/app/product.json.backup | \
  sed 's|"serviceUrl": "https://open-vsx.org/vscode/gallery",|"serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",|' | \
  sed 's|"itemUrl": "https://open-vsx.org/vscode/item"|"itemUrl": "https://marketplace.visualstudio.com/items",\n\t\t"cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",\n\t\t"controlUrl": "",\n\t\t"recommendationsUrl": ""|' > /usr/share/codium/resources/app/product.json
