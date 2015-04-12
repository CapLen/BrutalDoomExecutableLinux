#!/bin/bash
GZDOOM_PATH=/usr/bin/gzdoom
ZANDRONUM_PATH=/usr/bin/zandronum
WAD_FILE=doom1.wad
MUSIC_FILE=DoomMetalVol4.wad
BRUTAL_FILE=brutal19.pk3

if [ -e $ZANDRONUM_PATH -a -e $MUSIC_FILE -a -e $BRUTAL_FILE -a -e $WAD_FILE ] 
then
    $ZANDRONUM_PATH $WAD_FILE $MUSIC_FILE $BRUTAL_FILE 
    exit 0
else
    echo "Zandronum is not installed"
    zenity --info --text="Zandronum is not installed"
fi
