#!/bin/bash
#My Telegram https://t.me/jhalo


# --------------------- inputs

# select_home_conf=$(zenity --title "Dynamic wallpaper" --text="Pantalla de configuración de «Dynamic wallpaper»" --question --ok-label="Configurar" --cancel-label="Detener")

# # --------------------- var

killprocesess () {
	killall xwinwrap
}

# --------------------- struc


if zenity --title "Dynamic wallpaper" --text="Pantalla de configuración de «Dynamic wallpaper»" --question --ok-label="Configurar" --cancel-label="Detener"; then
	select_ratio_aspect=$( zenity --title="Dynamic wallpaper" --text="Configuracion de pantalla" --list --column "Elige un aspecto de radio" "Adaptativo" "Original")

	select_sound=$( zenity --title="Dynamic wallpaper" --text="Configuracion de sonido" --list --column "Sonido" "true" "false")

	select_url=$( zenity --title="Dynamic wallpaper" --text="Seleccione el video que quiere establecer como fondo" --file-selection $HOME)


	rm /opt/dynamic-wallpaper/settings.cfg
	echo -e "select_ratio_aspect='$select_ratio_aspect'\nselect_sound='$select_sound'\nselect_url='$select_url'" >> /opt/dynamic-wallpaper/settings.cfg
	sh /opt/dynamic-wallpaper/dynamic-wallpaper-script.sh

else
	killprocesess
fi

# if $select_home_conf; then
    
# $killprocesess
    
#     else

# # --------------------- more-inputs

	# select_ratio_aspect=$( zenity --title="Dynamic wallpaper" --text="Configuracion de pantalla" --list --column "Elige un aspecto de radio" "Adaptativo" "Original")

	# select_sound=$( zenity --title="Dynamic wallpaper" --text="Configuracion de sonido" --list --column "Sonido" "true" "false")

	# select_url=$( zenity --title="Dynamic wallpaper" --text="Seleccione el video que quiere establecer como fondo" --file-selection $HOME)
   
# fi
