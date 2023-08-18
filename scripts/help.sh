#!/usr/bin/env bash

source scripts/variables.sh

printf "${GREEN}
        __    _       __
  _____/ /_  (_)___  / /___  ______  ___  _____
 / ___/ __ \/ / __ \/ __/ / / / __ \/ _ \/ ___/
/ /__/ / / / / /_/ / /_/ /_/ / / / /  __(__  )
\___/_/ /_/_/ .___/\__/\__,_/_/ /_/\___/____/
           /_/
\n${NC}"

printf "${GREEN}make${NC} ${BLUE}help${NC} - You're lookin' at it.\n"
printf "${GREEN}make${NC} ${BLUE}install${NC} - Install the project dependencies.\n"
printf "${GREEN}make${NC} ${BLUE}new${NC} - Create a new song.\n"
printf "${GREEN}make${NC} ${BLUE}build SONG_NAME=<song-name>${NC} - Build a song for NES.\n"
printf "\n"
