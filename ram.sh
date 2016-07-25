#!/bin/bash

free | grep 'Mem:' > memory

total=`awk '{print $2}' memory`
usada=`awk '{print $3}' memory`

porcentaje=`echo "scale=3; $usada/$total*100" | bc`

echo $porcentaje
