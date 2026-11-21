
#!/bin/bash

set -e

# Terminal colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'

INSTALL_DIR="$HOME/.local/bin"

echo -e "${CYAN}Installing BringDesk...${RESET}"

mkdir -p "$INSTALL_DIR"

cp bringdesk "$INSTALL_DIR/bringdesk"
chmod +x "$INSTALL_DIR/bringdesk"

# Add ~/.local/bin to PATH if necessary
PATH_LINE='export PATH="$HOME/.local/bin:$PATH"'

if ! grep -Fxq "$PATH_LINE" "$HOME/.bashrc"; then
    echo "$PATH_LINE" >> "$HOME/.bashrc"
    echo -e "${GREEN}PATH configuration added to .bashrc${RESET}"
fi

echo
echo -e "${GREEN}BringDesk installed successfully!${RESET}"
echo -e "${YELLOW}Restart your terminal or run: source ~/.bashrc${RESET}"
