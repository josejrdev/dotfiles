#!/bin/env bash

while true; do
	NivelBateria=$(acpi | grep "Battery" | cut -d "," -f 2 | awk -F '%' '{print$1}' | awk -F ' ' '{print$1}')
	StatusBateria=$(acpi | grep "Battery" | cut -d "," -f 1 | cut -d ':' -f 2 | awk -F ' ' '{print$1}')
	Alerta=""
if [ $NivelBateria -gt 80 ]; then
	if [ "$StatusBateria" == "Charging" ]; then
		Alerta="  BATERIA CARREGADA $NivelBateria%"
		notify-send -t 30000 "$Alerta"
	fi
elif [ $NivelBateria -lt 25 ]; then
	if [ "$StatusBateria" == "Discharging" ]; then
		Alerta="   BAT DESCARREGADA $NivelBateria%"
		notify-send -t 30000 "$Alerta"
	fi
fi
sleep 30
done
