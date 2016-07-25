#!/bin/bash

top -bn 1 | grep "Cpu" > cpuUsage

percentage=`awk '{print $2}' cpuUsage`

echo $percentage > cpuUsage

percentage=`sed "s/,/./" cpuUsage`

echo $percentage
