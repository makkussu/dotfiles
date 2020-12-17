#!/bin/dash

set -e

config="$HOME/.config/sway"
wallpapers="$HOME/Pictures/Wallpapers/"
file=sunshineAnime.jpg

swaylock --clock --datestr '%d.%m.%Y' --indicator --indicator-radius 20 -ef -i "$wallpapers/$file"
