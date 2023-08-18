#!/usr/bin/env bash

source scripts/variables.sh

echo Linking directories...

for dir in $PWD/src/*;
  do
    if [ -d "$dir" ]; then
      SONG_NAME="${dir##*/}"
      rm -rf $MUSIC_DIR/$SONG_NAME
      cp -R src/$SONG_NAME $MUSIC_DIR/$SONG_NAME
    fi
done
