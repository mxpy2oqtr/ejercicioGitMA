#!/bin/bash
yad --title="¡ALERTA! 🚨" --text="¡TU SISTEMA ESTÁ INFECTADO! (Simulación educativa)" --button="Cerrar:0"

# FEAT: Crear archivo temporal
echo "💾 Creando /tmp/infectado.log..."
touch /tmp/infectado.log

# FEAT: Añadir texto al archivo
echo "🖨️ Escribiendo texto aleatorio..."
echo "¡Infección simulada! $(date)" >> /tmp/infectado.log