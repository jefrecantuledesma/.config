#!/bin/bash

echo "Launching killusb-git"
killusb-git &
killusb_pid=$!

echo "Launching swaylock"
swaylock -f --indicator-radius 25 --indicator-x-position 50 --indicator-y-position 950 --image /home/fribbit/.config/sway/wallpapers/train_car_tunnel.png &
swaylock_pid=$!

echo "Waiting for processes to finish"
wait "$swaylock_pid"

echo "Killing Python process running the script"
pkill -f "python /usr/bin/killusb-git"

