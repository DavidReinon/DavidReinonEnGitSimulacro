#!/bin/bash

califacion=$(cat notas.txt | grep $1 -i | grep $2 -i | awk '{print $3}')
echo "Nota: $califacion"
./d.sh $califacion