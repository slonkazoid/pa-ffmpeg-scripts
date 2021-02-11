#!/usr/bin/python3
import subprocess
import sys

for line in sys.stdin:
    subprocess.run(
        ["festival", "--tts", "--pipe"], input=bytes(line, "utf-8")
    )
