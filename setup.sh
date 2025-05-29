#!/bin/bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[1;34m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m' # No Color

clear
# Banner
echo -e "${BOLD}${BLUE}"
cat << "EOF"
 ██████╗ ██╗  ██╗███████╗ ██████╗ ██████╗  ██████╗ ███████╗
██╔═████╗╚██╗██╔╝██╔════╝██╔═══██╗██╔══██╗██╔═══██╗██╔════╝
██║██╔██║ ╚███╔╝ ███████╗██║   ██║██████╔╝██║   ██║███████╗
████╔╝██║ ██╔██╗ ╚════██║██║   ██║██╔══██╗██║   ██║╚════██║
╚██████╔╝██╔╝ ██╗███████║╚██████╔╝██║  ██║╚██████╔╝███████║
 ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝
                                                                                                   
EOF
echo -e "${NC}"

# ===============================
# Clean up problematic NodeSource repo (Ubuntu 24.04 fix)
# ===============================
if [ -f /etc/apt/sources.list.d/nodesource.list ]; then
  echo -e "${RED}[WARNING] Removing unsupported NodeSource repository...${RESET}"
  sudo rm /etc/apt/sources.list.d/nodesource.list
fi

echo -e "${BLUE}Updating and upgrading system packages...${NC}"
sudo apt-get update -y && sudo apt-get upgrade -y

echo -e "${BLUE}Installing required packages...${NC}"
sudo apt-get install -y sudo screen curl

echo -e "${BLUE}Installing Ollama...${NC}"
curl -fsSL https://ollama.com/install.sh | sh

echo -e "${BLUE}Installing Dria...${NC}"
curl -fsSL https://dria.co/launcher | bash

echo -e "${BLUE}Adding Dria to PATH...${NC}"
if [ -d "$HOME/.dria/bin" ]; then
    export PATH="$HOME/.dria/bin:$PATH"
    echo 'export PATH="$HOME/.dria/bin:$PATH"' >> ~/.bashrc
    echo -e "${GREEN}Dria path added to .bashrc${NC}"
else
    echo -e "${RED}Dria installation may have failed. Directory not found.${NC}"
fi

echo -e "${BLUE}Launching screen session to run Dria launcher...${NC}"
screen -dmS dria bash -c "source ~/.bashrc; dkn-compute-launcher start; exec bash"

echo -e "${GREEN}Setup complete. Attach to screen with:${NC} ${BLUE}screen -r dria${NC}"
