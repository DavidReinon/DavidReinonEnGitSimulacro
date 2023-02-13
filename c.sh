#!/bin/bash
limite=$(cat notas.txt | wc -l)
limite=$((limite + 1))

for i in $(seq 2 $limite); do
    linea=$(cat notas.txt | head -n$i | tail -n1 | awk '{print $3}')
    if [ $linea -ge 5 ]; then
        aprobados=$(($aprobados + 1))
    else
        suspendidos=$(($suspendidos + 1))
    fi
done
echo "Numero de aprobados: $aprobados "
echo "Numero de suspendidos: $suspendidos "
