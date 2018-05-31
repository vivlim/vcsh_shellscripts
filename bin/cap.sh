#!/bin/bash
ts=$(date +%s)
dest=~/screens/screen_$ts.png
if ! scrot -s $dest; then
    echo "stopping!"
    exit
fi
scp $dest nuc:www/screens/
echo "https://vvn.space/~vivlim/screens/screen_$ts.png" | xclip -in -selection clipboard

