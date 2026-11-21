#!/bin/bash

set -e

INSTALL_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"

cp bringdesk "$INSTALL_DIR/bringdesk"

chmod +x "$INSTALL_DIR/bringdesk"

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo
    echo "$INSTALL_DIR is not currently in your PATH."
    echo "Add the following line to your ~/.bashrc:"
    echo
    echo 'export PATH="$HOME/.local/bin:$PATH"'
fi

echo
echo "BringDesk installed successfully!"
echo "You can run it using: bringdesk"