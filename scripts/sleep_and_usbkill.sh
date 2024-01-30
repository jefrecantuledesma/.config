#!/bin/bash

killusb-git &
echo "Killusb-git activated."
swaylock -f --indicator-radius 25 --indicator-x-position 50 --indicator-y-position 950 --image /home/fribbit/.config/sway/wallpapers/train_car_tunnel.png &
swaylock_pid=$!
echo "Swaylock activated."
sleep 1
echo "Sleeping one."
systemctl suspend &
systemctl_pid=$!
echo "System suspended."
wait "$systemctl_pid"
wait "$swaylock_pid"
pkill -f "python /usr/bin/killusb-git"
echo "Killed killusb-git."

