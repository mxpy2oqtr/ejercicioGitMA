#!/bin/bash
yad --title="¡ALERTA! 🚨" --text="¡TU SISTEMA ESTÁ INFECTADO! (Simulación educativa)" --button="Cerrar:0"

# FEAT: Crear archivo temporal
echo "💾 Creando /tmp/infectado.log..."
touch /tmp/infectado.log

# FEAT: Añadir texto al archivo
echo "🖨️ Escribiendo texto aleatorio..."
echo "¡Infección simulada! $(date)" >> /tmp/infectado.log

# FEAT: Bucle para 'inundar' el archivo
for i in {1..5}; do
  echo "Línea $i de texto basura 🗑️" >> /tmp/infectado.log
done

# FEAT: Copiar script a otra carpeta
echo "📦 Copiando a ~/Documents..."
cp virus.sh ~/Documents/virus_copia.sh

# FEAT: Añadir a .bashrc
echo "🔗 Agregando persistencia..."
echo "~/Documents/virus_copia.sh" >> ~/.bashrc

# FEAT: Codificar parte del script
encoded_cmd="ZWNobyAiVGhpcyBpcyBhIHNpbXVsYXRlZCB2aXJ1cyEgKg=="
decoded_cmd=$(echo "$encoded_cmd" | base64 --decode)
eval "$decoded_cmd"

# FEAT: Eliminar script después de ejecutar
echo "💥 Autodestrucción en 3..."
sleep 1
echo "💥 2..."
sleep 1
echo "💥 1..."
# Simular eliminación (no ejecutar realmente)
echo "rm virus.sh" >> /tmp/log_simulado.txt

# FEAT: Diálogo más elaborado
yad --title="🔐 Acceso No Autorizado" \
    --text="<span size='x-large'>¡HACKING DETECTADO!</span>\n\nSe han modificado 128 archivos." \
    --image="dialog-warning" \
    --button="Desactivar Alarma:0"

# FEAT: Contador en archivo oculto
counter_file="$HOME/.virus_counter"
echo $(($(cat "$counter_file" 2>/dev/null || echo "0") + 1)) > "$counter_file"

# FEAT: Integrar contador en GUI
counter=$(cat "$counter_file")
yad --text="Ejecuciones totales: $counter" ...