#!/bin/sh

GAMEDIR="/mnt/SDCARD/Ports/Pico8"

HOME="$GAMEDIR"

cd $HOME

LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
PATH="$HOME"/bin:$PATH


pico8_64 -splore -draw_rect 0,0,1024,768 2>&1 | tee $HOME/log.txt
