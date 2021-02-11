#!/bin/bash
ffplay -f pulse -i Virt.monitor -v 0 &
#./speak.py
espeak -vmb-us2 -s120
