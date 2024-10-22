#!/bin/sh
cd $(dirname "$0")
GAMEDIR="$(dirname "$0")"

HOME="$GAMEDIR"

cd $HOME

LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
PATH="$HOME"/bin:$PATH

echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1008000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 1 > /sys/devices/system/cpu/cpu0/online
echo 1 > /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/devices/system/cpu/cpu3/online
echo 1 > /sys/devices/system/cpu/cpu2/online

pico8_64 -splore 2>&1 | tee $HOME/log.txt
