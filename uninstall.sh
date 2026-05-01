#!/bin/bash

# n1ghtfall Uninstallation Script
# Remove the n1ghtfall theme from your system
# https://github.com/reorientate/n1ghtfall

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print header
echo -e "${BLUE}"
echo "     ___       _   _   ___     _ _ "
echo " ___|_  |  ___| |_| |_|  _|___| | |"
echo "|   |_| |_| . |   |  _|  _| .'| | |"
echo "|_|_|_____|_. |_|_|_| |_| |__,|_|_|"
echo "     n1ght|___|fall.sh"
echo -e "${NC}"
echo -e "${RED}n1ghtfall Uninstallation Script${NC}"
echo ""

# Confirm uninstallation
read -p "Are you sure you want to uninstall n1ghtfall? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Uninstallation cancelled.${NC}"
    exit 0
fi

# Paths
ZSHRC_PATH="${HOME}/.zshrc"
INSTALL_DIR="${HOME}/.n1ghtfall"
BACKUP_PATH="${HOME}/.zshrc.backup-n1ghtfall"

# Remove the installation directory
if [ -d "$INSTALL_DIR" ]; then
    echo -e "${YELLOW}Removing n1ghtfall directory...${NC}"
    rm -rf "$INSTALL_DIR"
    echo -e "${GREEN}✓ Removed $INSTALL_DIR${NC}"
fi

# Backup and remove .zshrc if it was installed by n1ghtfall
if [ -f "$ZSHRC_PATH" ]; then
    echo -e "${YELLOW}Backing up current .zshrc...${NC}"
    cp "$ZSHRC_PATH" "$BACKUP_PATH"
    echo -e "${GREEN}✓ Backup saved to $BACKUP_PATH${NC}"
    
    # Remove .zshrc (user can restore from backup if needed)
    rm "$ZSHRC_PATH"
    echo -e "${GREEN}✓ Removed $ZSHRC_PATH${NC}"
fi

echo ""
echo -e "${GREEN}✓ n1ghtfall has been uninstalled!${NC}"
echo ""
echo -e "${BLUE}Your previous .zshrc has been backed up to:${NC}"
echo -e "${YELLOW}  $BACKUP_PATH${NC}"
echo ""
echo -e "${BLUE}You can restore it with:${NC}"
echo -e "${YELLOW}  cp $BACKUP_PATH $ZSHRC_PATH${NC}"
echo ""
echo -e "${BLUE}To apply changes, restart your terminal or run:${NC}"
echo -e "${YELLOW}  source ~/.zshrc${NC}"
echo ""
