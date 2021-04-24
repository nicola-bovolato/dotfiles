#!/usr/bin/env bash

counter=0
bluetoothctl paired-devices | cut -d ' ' -f 2 | 
while read -r uuid; do
    info=$(bluetoothctl info "$uuid")
                
    if echo "$info" | grep -q "Connected: yes"; then
        name=$(echo "$info" | grep "Alias" | cut -d ' ' -f 2-)

        if [ $counter -gt 0 ]; then
            printf ", %s" "$name"
        else
            printf " %s" "$name"
        fi
            counter=$((counter + 1))
    fi
        
    printf '\n'
done

