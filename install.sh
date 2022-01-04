#!/bin/bash


##################################################
## Author - DN-debug
## Description - Peux RiverWM setup via fetcher app
##################################################

# copy configurations

if zenity --question --text="Want to copy the configurations?"
then
    echo "changing directory"
    cd ../
    mkdir $HOME/tmp
    cp -r Peux-River/*/ $HOME/tmp/
    notify-send "Copied the configurations to $HOME/tmp/"
else
    notify-send "skipping the setup!"
fi

# cleanup

rm -rf /tmp/fetcher/Peux-River
notify-send "Done!"
