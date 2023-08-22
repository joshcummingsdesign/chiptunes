# 👾 chiptunes

This is how I make chiptunes.

Big thanks to [Kent Hansen](https://www.youtube.com/watch?v=k4usxbg17Wg) for the tools and the detailed instructions, and to Brandon Walsh for showing me how to use MilkyTracker.

## Requirements

- [MilkyTracker](https://milkytracker.org/)
- [Nestopia](https://nestopia.sourceforge.net/)
- Standard Linux development environment

## How to Use

1.  Install the dependencies:

        make install

2.  Make a new song:

        make new

3.  Open the `src/<song-name>/song.xm` file in MilkyTracker.

4.  When you're ready to create an NES file, run the following:

        make build SONG_NAME=<song-name>

5.  Open the `build/<song-name>.nes` file in Nestopia.

## Graphics

Sprites are stored in the `graphics.chr` file, and can be edited with a tool like [YY-CHR](https://www.romhacking.net/utilities/958/).

The `main.asm` file contains the graphics programming.
