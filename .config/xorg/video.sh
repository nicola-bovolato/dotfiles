#!/bin/bash

CONFIG_PATH='.config/variables'
PRIMARY_MONITOR='HDMI-1'

if [[ $(xrandr -q | grep 'DP-2 connected') ]]; then    
    SECONDARY_MONITOR=$PRIMARY_MONITOR
    PRIMARY_MONITOR='DP-2'
fi

if [[ $(xrandr -q | grep 'DVI-I-1 connected') ]]; then    
    SECONDARY_MONITOR='DVI-I-1'
fi

mkdir -p $CONFIG_PATH && echo $PRIMARY_MONITOR > $CONFIG_PATH/primary-monitor
mkdir -p $CONFIG_PATH && echo $SECONDARY_MONITOR > $CONFIG_PATH/secondary-monitor
xrandr --output $PRIMARY_MONITOR --primary --auto 
