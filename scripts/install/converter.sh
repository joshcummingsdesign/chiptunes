#!/usr/bin/env bash

source scripts/variables.sh

printf "${BLUE}Installing converter...\n${NC}"
cd vendor
git clone git://repo.or.cz/kents-nes-stuff.git
cd kents-nes-stuff/tools/xm2nes
echo Running converter installation...
make install &> /dev/null

if ! command -v xm2nes &> /dev/null
then
    printf "${RED}Converter installation failed.\n${NC}"
    echo "xm2nes could not be found"
    exit
fi

echo Converter installed successfully.
printf "\n"
