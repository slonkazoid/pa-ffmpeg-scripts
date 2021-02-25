#!/bin/bash
netcat -lkp 3351 | espeak -vmb-us1 -s120 &
printf "%s" "$!">pids
netcat -lkp 3352 | espeak -vmb-us2 -s120 &
printf "%s" " $!">>pids
netcat -lkp 3353 | ffmpeg -v 0 -f opus -i pipe:0 -f pulse -device Virt "media-over-net" &
printf "%s" " $!">>pids
