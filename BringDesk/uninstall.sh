
#!/bin/bash

# Terminal colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RESET='\033[0m'

INSTALL_DIR="$HOME/.local/bin"

echo -e "${CYAN}Uninstalling BringDesk...${RESET}"

rm -f "$INSTALL_DIR/bringdesk"

echo -e "${GREEN}BringDesk uninstalled successfully!${RESET}"
