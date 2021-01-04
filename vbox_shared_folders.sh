#!/bin/bash

DRIVE="$1"
DEVICE="/dev/$DRIVE"
PATH_TO_MOUNT="/mnt/$DRIVE"
# create target folder if not present
if [[ ! -d "$PATH_TO_MOUNT" ]]; then
    mkdir -p "$PATH_TO_MOUNT"
fi
sudo mount -t vboxsf -o dmode=775,fmode=664,gid="$USER",uid="$USER" "$DEVICE" "$PATH_TO_MOUNT"
