#!/bin/bash

echo "Configuring VS Code..."
rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.laptop/dotfiles/vscode.settings.json ~/Library/Application\ Support/Code/User/settings.json

cat ~/.laptop/vscode-extensions | while read line 
do
  code --install-extension $line
done
