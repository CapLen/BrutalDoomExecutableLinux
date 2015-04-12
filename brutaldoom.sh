#!/bin/bash

########################################
#        BRUTAL DOOM LAUNCHER
#
# Author...: Hassan ElAzzouzi
# Version..: 1.0
# Date.....: 12/04/2015
#######################################

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
    echo "Zandronum is not installed, also, check if brutal19.pk3 and DoomMetalVol4.wad are not missing"
    zenity --info --text="Zandronum is not installed or/and Wad/pk3 missing"
fi
