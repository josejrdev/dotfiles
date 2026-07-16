#!/bin/bash

# Caminho da pasta com os wallpapers
WALLPAPER_DIR="/home/josejr/images/wall"

# Intervalo de tempo (em segundos)
INTERVALO=50

# Loop infinito
while true; do
    # Escolhe uma imagem aleatória da pasta
    feh --bg-scale --randomize "$WALLPAPER_DIR"

    # Espera o intervalo definido
    sleep $INTERVALO
done

