#!/bin/bash
#My Telegram https://t.me/jhalo


# --------------------- inputs

#select_home_conf=$( zenity --title "Dynamic wallpaper" --text="Pantalla de configuración de «Dynamic wallpaper»" --question --ok-label="Configurar" --cancel-label="Detener")

select_ratio_aspect=$( zenity --title="Dynamic wallpaper" --text="Configuracion de pantalla" --list --column "Elige un aspecto de radio" "Adaptativo" "Original")

select_sound=$( zenity --title="Dynamic wallpaper" --text="Configuracion de sonido" --list --column "Sonido" "true" "false")

select_url=$( zenity --title="Dynamic wallpaper" --text="Seleccione el video que quiere establecer como fondo" --file-selection $HOME)

rm /opt/dynamic-wallpaper/settings.cfg
echo -e "select_ratio_aspect='$select_ratio_aspect'\nselect_sound='$select_sound'\nselect_url='$select_url'" >> /opt/dynamic-wallpaper/settings.cfg

# --------------------- struc

#$select_home_conf="home_conf"

#if [ $home_conf="false" ] ; then
#    echo "se deberia cerrar"
#    elif [ "$select_home_conf" = "true" ] ; then
#    echo "se deberia configurar"
#fi

#sh /opt/dynamic-wallpaper/dynamic-wallpaper-script.sh

killall xwinwrap
exit