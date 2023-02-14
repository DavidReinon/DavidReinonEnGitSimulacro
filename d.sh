#!/bin/bash
if [ $1 -ge 0 -a $1 -le 10 ]; then
    if [ $1 -ge 0 -a $1 -lt 5 ]; then
        echo "La nota es un suspenso."
    elif [ $1 -ge 5 -a $1 -le 8 ]; then
        echo "La nota es un aprobado."
    else
        echo "La nota es un sobresalinete."
    fi
else
    echo "La nota suministrada debe de estar entre el 0 y el 10"
fi
