#!/bin/bash
pacmd load-module module-null-sink sink_name=Virt
pacmd load-module module-loopback sink=Virt
pacmd update-sink-proplist Virt device.description=virtoutput
