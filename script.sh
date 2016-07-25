#!/bin/bash

./carga.sh

carga1=`awk '{print $1}' load`
carga2=`awk '{print $2}' load`
carga3=`awk '{print $3}' load`

cpu=`./cpu.sh`
ram=`./ram.sh`
space=`./espacio.sh`

curl --silent --request POST --header "X-THINGSPEAKAPIKEY: VH1LU1IN46DI6THV" --data "field1=$cpu&field2=$ram&field3=$space&field4=$carga1&field5=$carga2&field6=$carga3"  "http://api.thingspeak.com/update"

