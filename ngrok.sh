#!/bin/bash
#
# Created by: ThomasZT13
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function Install_Ngrok {
	sleep 0.5
	clear
echo -e "${amarillo}
 ▄▄▄   ▄▄     ▄▄▄▄   ▄▄▄▄▄▄      ▄▄▄▄    ▄▄   ▄▄▄
 ███   ██   ██▀▀▀▀█  ██▀▀▀▀██   ██▀▀██   ██  ██▀
 ██▀█  ██  ██        ██    ██  ██    ██  ██▄██
 ██ ██ ██  ██  ▄▄▄▄  ███████   ██    ██  █████
 ██  █▄██  ██  ▀▀██  ██  ▀██▄  ██    ██  ██  ██▄
 ██   ███   ██▄▄▄██  ██    ██   ██▄▄██   ██   ██▄
 ▀▀   ▀▀▀     ▀▀▀▀   ▀▀    ▀▀▀   ▀▀▀▀    ▀▀    ▀▀
"${blanco}
}
function token_ngrok {
	Install_Ngrok
	unzip ngrok-stable-linux-arm.zip
	chmod 777 ngrok
	cp ngrok ${PREFIX}/bin
echo -e -n "${amarillo}
┌═════════════════┐
█ ${blanco}NGROK AUTHTOKEN ${amarillo}█
└═════════════════┘
┃
└═>>> "${blanco}
read -r auth_token_ngrok
${auth_token_ngrok}
rm ngrok
echo -e "${amarillo}
┌═══════════════════════════════┐
█ ${blanco}NGROK INSTALADO CORRECTAMENTE ${amarillo}█
└═══════════════════════════════┘
"${blanco}
}
#
# CÓDIGO
#
if [ -x ${PREFIX}/bin/ngrok ]
then
Install_Ngrok
echo -e "${amarillo}
┌═════════════════════════┐
█ ${blanco}NGROK YA ESTÁ INSTALADO ${amarillo}█
└═════════════════════════┘
"${blanco}
else
token_ngrok
fi
