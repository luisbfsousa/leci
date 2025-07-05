#!/bin/bash

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

echo -e "${BOLD}${CYAN}Building IIml...${NC}"
if [ -d "src/IIml" ]; then
    output=$(cd src/IIml && antlr4-build 2>&1)
    echo "$output"
    if echo "$output" | grep -qi "error"; then
        echo -e "${RED}IIml build failed${NC}"
        exit 1
    fi
else
    echo -e "${RED}IIml directory not found${NC}"
    exit 1
fi

echo
echo -e "${BOLD}${CYAN}Building Iml...${NC}"
if [ -d "src/Iml" ]; then
    output=$(cd src/Iml && antlr4-build 2>&1)
    echo "$output"
    if echo "$output" | grep -qi "error"; then
        echo -e "${RED}Iml build failed${NC}"
        exit 1
    fi
else
    echo -e "${RED}Iml directory not found${NC}"
    exit 1
fi

echo
echo -e "${GREEN}Build completed successfully${NC}"
