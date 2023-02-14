#!/bin/bash

notas=$(cat notas.txt | grep $1 -i | awk '{print $3}')
lineas=$(echo "$notas" | wc -l)
for i in $(seq 1 $lineas); do
    nota=$(echo "$notas" | head -n$i | tail -n1)
    if [ $nota -ge 5 ]; then
        aprobado=true
    else
        aprobado=false
        echo "$1 NO lo tiene todo aprobado."
        break
    fi
done
if [ $aprobado = true ]; then
    echo "$1 SI lo tiene todo aprobado"
fi
