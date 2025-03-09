#!/bin/bash
# SIMULACIÓN DE VIRUS INOFENSIVO - PRÁCTICA EDUCATIVA
yad --title="¡ALERTA! 🚨" \
    --text="<span size='x-large' color='red'>¡TU SISTEMA ESTÁ INFECTADO!</span>\n\n😈 ¡Este es un ejercicio académico! No hay peligro real." \
    --button="Cerrar:0"

# Payload simulado: Inundar un archivo con texto
echo "🔵 Creando archivo temporal..."
for i in {1..100}; do
    echo "¡Este es un texto aleatorio! 🦠 #$i" >> /tmp/infectado.log
done

# Propagación simulada
echo "🔄 Copiando script a Documents..."
cp virus.sh ~/Documents/virus_copia.sh

# Persistencia simulada
echo "🔗 Agregando a .bashrc..."
echo "~/ejercicioGitTUSINIALES/virus.sh" >> ~/.bashrc
