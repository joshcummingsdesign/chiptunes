#!/usr/bin/env bash

source scripts/variables.sh

if [ ! -d src/$SONG_NAME ]; then
  printf "${RED}$SONG_NAME doesn't exist.\n${NC}"
  exit
fi

./scripts/link.sh
DIR=$PWD
mkdir -p $DIR/build
cd $MUSIC_DIR/$SONG_NAME
make
mv build/$SONG_NAME.nes $DIR/build/
