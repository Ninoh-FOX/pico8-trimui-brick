#!/bin/sh

GAMEDIR="/mnt/SDCARD/Ports/Pico8"

HOME="$GAMEDIR"

cd $HOME

LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
PATH="$HOME/bin:$PATH"

echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1008000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 1 > /sys/devices/system/cpu/cpu0/online
echo 1 > /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/devices/system/cpu/cpu3/online
echo 1 > /sys/devices/system/cpu/cpu2/online

resolution=$(fbset | grep 'geometry' | awk '{print $2,$3}')
width=$(echo $resolution | awk '{print $1}')
height=$(echo $resolution | awk '{print $2}')

draw_rect="-draw_rect 0,0,${width},${height}"

pico8_64 -splore $draw_rect -root_path "/mnt/SDCARD/Roms/PICO8/" 2>&1 | tee $HOME/log.txt

# Copiar archivos si no existen
for file in /mnt/SDCARD/Ports/Pico8/.lexaloffle/pico-8/bbs/carts/*.p8.png; do
    dest="/mnt/SDCARD/Roms/PICO8/$(basename "$file")"
    if [ ! -e "$dest" ]; then
        cp "$file" "$dest"
    fi
done

sync
