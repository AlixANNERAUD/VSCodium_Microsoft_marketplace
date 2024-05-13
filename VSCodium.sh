#!/bin/bash

# Sauvegarde du fichier original
cp /usr/share/codium/resources/app/product.json /usr/share/codium/resources/app/product.json.backup

# Lecture du fichier et remplacement des lignes
cat /usr/share/codium/resources/app/product.json.backup | \
  sed 's|"serviceUrl": "https://open-vsx.org/vscode/gallery",|"serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",|' | \
  sed 's|"itemUrl": "https://open-vsx.org/vscode/item"|"itemUrl": "https://marketplace.visualstudio.com/items",\n\t\t"cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",\n\t\t"controlUrl": "",\n\t\t"recommendationsUrl": ""|' > /usr/share/codium/resources/app/product.json
