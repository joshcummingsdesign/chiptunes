#!/usr/bin/env bash

source scripts/variables.sh

printf "${BLUE}Installing assembler...\n${NC}"
cd vendor
git clone git://repo.or.cz/xorcyst.git
cd xorcyst
echo Running assembler installation...
./configure &> /dev/null
make install &> /dev/null

if ! command -v xasm &> /dev/null
then
    printf "${RED}Assembler installation failed.\n${NC}"
    echo "xasm could not be found"
    exit
fi

if ! command -v xlnk &> /dev/null
then
    printf "${RED}Assembler installation failed.\n${NC}"
    echo "xlnk could not be found"
    exit
fi

echo Assember installed successfully.
printf "\n"
