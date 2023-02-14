#!/bin/bash

limite=$(cat notas.txt | wc -l)
limite=$((limite + 1))

for i in $(seq 2 $limite); do
    suma=0
    asignatura=$(cat notas.txt | head -n$i | tail -n1 | awk '{print $2}')

    notasLimite=$(cat notas.txt | grep $asignatura -i | wc -l)
    for i in $(seq 1 $notasLimite); do
        notas=$(cat notas.txt | grep $asignatura -i | awk '{print $3}')
        nota=$(echo $notas | cut -d " " -f $i)
        suma=$(($suma + $nota))
    done

    media=$(($suma / $notasLimite))
    echo "La media de $asignatura es $media"
done

