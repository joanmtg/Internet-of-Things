#!/bin/bash

uptime > load

CARGA1=`awk '{print  $(NF-2)}' load`
CARGA2=`awk '{print  $(NF-1)}' load`
CARGA3=`awk '{print  $NF}' load`

CARGA1=`expr substr $CARGA1 1 4`
CARGA2=`expr substr $CARGA2 1 4`

echo $CARGA1 > load
echo $CARGA2 >> load
echo $CARGA3 >> load

CARGA=`sed "s/,/./g" load`

echo $CARGA > load
