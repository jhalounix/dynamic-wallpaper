#!/bin/bash
#My Telegram https://t.me/jhalo

# --------------------- fun

killprocesess () {
	killall xwinwrap
}

# --------------------- inputs-cond

if zenity --title "Dynamic wallpaper" --text="Pantalla de configuración de «Dynamic wallpaper»\n\nImportante: El nombre del archivo no debe contener caracteres especiales, tampoco la ruta." --width=350 --question --ok-label="Configurar" --cancel-label="Detener"; then
	
	select_ratio_aspect=$( zenity --title="Dynamic wallpaper" --text="Configuracion de pantalla" --list --column "Elige un aspecto de radio" "Adaptativo" "Original")
	select_sound=$( zenity --title="Dynamic wallpaper" --text="Configuracion de sonido" --list --column "Sonido" "true" "false")
	select_url=$( zenity --title="Dynamic wallpaper" --text="Seleccione el video que quiere establecer como fondo" --file-selection $HOME)

#    cp '$PATH' /opt/dynamic-wallpaper/media esto todavía no funciona bien, sirve para copiar al directorio establecido y correr desde ahí el fondo dinámico, ver línea 13 y 14 de dynamic-wallpaper-script.sh
	rm /opt/dynamic-wallpaper/settings.cfg
	echo -e "select_ratio_aspect='$select_ratio_aspect'\nselect_sound='$select_sound'\nselect_url='$select_url'" >> /opt/dynamic-wallpaper/settings.cfg

	if zenity --question --text "¿Quiere iniciar el fondo dinámico?"; then
		sh /opt/dynamic-wallpaper/dynamic-wallpaper-script.sh
	else
		exit
	fi
else
	killprocesess
fi
