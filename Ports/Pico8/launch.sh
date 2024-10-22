#!/bin/sh
cd $(dirname "$0")
GAMEDIR="$(dirname "$0")"

HOME="$GAMEDIR"

cd $HOME

LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
PATH="$HOME"/bin:$PATH


pico8_64 -splore 2>&1 | tee $HOME/log.txt
