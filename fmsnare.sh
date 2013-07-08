#!/bin/sh
for (( i = 1; i < 100000; i++ ))
do
  CMIX "$i" < FMSnare100000.sco
done