#!/bin/bash

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # Reset cor

echo -e "${BOLD}${CYAN}Cleaning IIml...${NC}"
if [ -d "src/IIml" ]; then
    output=$(cd src/IIml && antlr4-clean 2>&1)
    echo "$output"
    if [ $? -ne 0 ]; then
        echo -e "${RED}IIml clean failed${NC}"
        exit 1
    fi
else
    echo -e "${RED}IIml directory not found${NC}"
    exit 1
fi

echo
echo -e "${BOLD}${CYAN}Cleaning Iml...${NC}"
if [ -d "src/Iml" ]; then
    output=$(cd src/Iml && antlr4-clean 2>&1)
    echo "$output"
    if [ $? -ne 0 ]; then
        echo -e "${RED}Iml clean failed${NC}"
        exit 1
    fi
else
    echo -e "${RED}Iml directory not found${NC}"
    exit 1
fi

echo
echo -e "${GREEN}Clean completed successfully${NC}"