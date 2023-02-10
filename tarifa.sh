#!/bin/bash
es_numero=^[0-9]+$
tarifa1=100
tarifa2=$((50 + $1))
tarifa3=$((20 + $1 * 2))

if [[ $1 =~ $es_numero ]]; then
    if [[ $tarifa1 -le $tarifa2 && $tarifa1 -le $tarif3 ]]; then
        echo "La tarifa 1 es la recomendada para tu caso"
    elif [ $tarifa2 -le $tarifa3 ]; then
        echo "La tarifa 2 es la recomendada para tu caso"
    else
        echo "La tarifa 3 es la recomendada para tu caso"
    fi
else
    echo "Expresion incorrecta. Debes de introducir un numero"
fi
