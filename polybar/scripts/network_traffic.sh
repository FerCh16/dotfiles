
#!/bin/bash

# Interfaz de red (ajústala según tu configuración, por ejemplo, eth0 o wlan0)
INTERFACE="eno1"

# Obtener datos de Rx y Tx con ifstat, ignorando la primera línea (que es una cabecera)
OUTPUT=$(ifstat -i $INTERFACE 1 1 | awk 'NR==3 {print " " $1 " KB/s  " $2 " KB/s"}')

# Mostrar el resultado
echo "$OUTPUT"
