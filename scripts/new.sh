#!/usr/bin/env bash

source scripts/variables.sh

printf "${BLUE}Song name: ${NC}"
read -r SONG_NAME

if [ -d src/$SONG_NAME ]; then
  printf "${RED}$SONG_NAME already exists.\n${NC}"
  exit
fi

echo Creating $SONG_NAME...
cp -R $MUSIC_DIR/$DEFAULT_SONG_DIR src/$SONG_NAME
sed -i "s/$DEFAULT_SONG_NAME/$SONG_NAME/g" src/$SONG_NAME/Makefile
./scripts/link.sh
printf "${GREEN}\n$SONG_NAME created!\n${NC}"
