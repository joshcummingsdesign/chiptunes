#!/usr/bin/env bash

source scripts/variables.sh

rm -rf vendor
mkdir vendor
./scripts/install/assembler.sh
./scripts/install/converter.sh
./scripts/link.sh

printf "${GREEN}\nInstallation complete!\n${NC}"
