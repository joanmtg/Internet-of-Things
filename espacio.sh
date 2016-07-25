#!/bin/bash

df | grep /dev/root > store

free=`awk '{print $4}' store`

echo $free
