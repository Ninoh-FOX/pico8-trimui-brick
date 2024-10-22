#!/bin/sh

EMU_DIR="/mnt/SDCARD/Emus/PICO8"
GAMEDIR="/mnt/SDCARD/Ports/Pico8"

$EMU_DIR/cpufreq.sh
$EMU_DIR/cpuswitch1.sh

HOME="$GAMEDIR"

cd $HOME

LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
PATH="$HOME"/bin:$PATH


pico8_64 -draw_rect 0,0,1024,768 -run "$1" 2>&1 | tee $HOME/log.txt
