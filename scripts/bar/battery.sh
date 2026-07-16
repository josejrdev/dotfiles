#!/bin/env bash

Capacidade=$(acpi | grep "Battery" | cut -d ":" -f 2 | awk -F '%,' '{print $1}' | awk -F ', ' '{print $2}')
if [ $Capacidade -gt 80 ]; then
	Icone="󰁹"
elif [ $Capacidade -gt 65 ]; then
	Icone="󰂀"
elif [ $Capacidade -gt 45 ]; then
	Icone="󰁿"
elif [ $Capacidade -gt 35 ]; then
	Icone="󰁽"
elif [ $Capacidade -gt 20 ]; then
	Icone="󰁼"
else
	Icone="󰂃"
fi

echo "$Icone $Capacidade%"
