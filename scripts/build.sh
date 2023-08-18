#!/usr/bin/env bash

source scripts/variables.sh

if [ ! -d src/$SONG_NAME ]; then
  printf "${RED}$SONG_NAME doesn't exist.\n${NC}"
  exit
fi

printf "${BLUE}Building $SONG_NAME...\n${NC}"
./scripts/link.sh
echo Compiling song...
DIR=$PWD
mkdir -p $DIR/build
cd $MUSIC_DIR/$SONG_NAME
make &> /dev/null
mv build/$SONG_NAME.nes $DIR/build/
printf "${GREEN}\n$SONG_NAME built!\n${NC}"
