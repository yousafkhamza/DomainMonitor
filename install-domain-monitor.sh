#!/bin/bash

# Author: Yousaf
# Date: 2024
# Description: its a domain monitoring script

# ANSI color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Installation directory
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="domain-monitor"

# Ensure script is run with sudo
if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}❌ Please run as root or use sudo${NC}"
    exit 1
fi

# Function to check dependencies
check_dependencies() {
    local deps=("curl" "bash")
    for dep in "${deps[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            echo -e "${RED}❌ $dep is not installed${NC}"
            exit 1
        fi
    done
}

# Main installation function
install_domain_monitor() {
    # Check dependencies
    check_dependencies

    # Create installation directory if it doesn't exist
    mkdir -p "$INSTALL_DIR"

    # Download the monitoring script
    echo -e "${BLUE}🌐 Downloading Domain Monitor Script...${NC}"
    curl -L -o "$INSTALL_DIR/$SCRIPT_NAME" https://raw.githubusercontent.com/yousafkhamza/DomainMonitor/main/domain-monitor

    # Make the script executable
    chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

    # Verify installation
    if [ -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then
        echo -e "${GREEN}✓ Domain Monitor installed successfully!${NC}"
        echo -e "${YELLOW}Usage: domain-monitor${NC}"
    else
        echo -e "${RED}❌ Installation failed${NC}"
        exit 1
    fi
}

# Uninstall function
uninstall_domain_monitor() {
    if [ -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then
        rm "$INSTALL_DIR/$SCRIPT_NAME"
        echo -e "${GREEN}✓ Domain Monitor uninstalled successfully${NC}"
    else
        echo -e "${YELLOW}⚠️ Domain Monitor is not installed${NC}"
    fi
}

# Handle arguments
case "$1" in
    uninstall)
        uninstall_domain_monitor
        ;;
    *)
        install_domain_monitor
        ;;
esac

exit 0