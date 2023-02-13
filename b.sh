#!/bin/bash
matriculas=$(cat notas.txt | wc -l)
#Ya que el comado wc -l cuenta una linea de menos, lo utilizamos para dejar de contar el encabezado
echo "El numero de matriculas que hay es: $matriculas"