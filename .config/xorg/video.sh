#!/bin/bash

CONFIG_PATH='.config/variables'
PRIMARY_MONITOR='LVDS-1'

if [[ $(xrandr -q | grep 'DP-2 connected') ]]; then    
    PRIMARY_MONITOR='DP-2'
fi

mkdir -p $CONFIG_PATH && echo $PRIMARY_MONITOR > $CONFIG_PATH/primary-monitor
xrandr --output $PRIMARY_MONITOR --primary --auto 
