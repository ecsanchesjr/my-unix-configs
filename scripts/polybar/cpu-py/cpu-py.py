#!/usr/bin/env python3
import psutil

allCores = psutil.cpu_percent(percpu=True, interval=1)
for core in allCores:
    print(repr(float(core)).rjust(4)+"%", end=" ", flush=True)


