#!/bin/bash

$MAC_SETUP_DIR/install.sh vscode \
  --script-version "" \
  --script-config "
    if [ ! -d ~/Library/Application\ Support/Code/User ]; then
      exit
    fi
    rm ~/Library/Application\ Support/Code/User/settings.json 
    ln -s $MAC_SETUP_DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    rm ~/Library/Application\ Support/Code/User/keybindings.json
    ln -s $MAC_SETUP_DIR/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
    ls -la ~/Library/Application\ Support/Code/User/*.json" \
  $@
