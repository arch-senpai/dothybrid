#!/bin/bash
#    ▄████████  ▄█     █▄   ▄█     █▄ 
#   ███    ███ ███     ███ ███     ███
#   ███    █▀  ███     ███ ███     ███
#  ▄███▄▄▄     ███     ███ ███     ███
# ▀▀███▀▀▀     ███     ███ ███     ███
#   ███    █▄  ███     ███ ███     ███
#   ███    ███ ███ ▄█▄ ███ ███ ▄█▄ ███
#   ██████████  ▀███▀███▀   ▀███▀███▀ 
  
EWW=`which eww`  # finds path of eww and stores it in EWW
if [[ ! `pidof eww` ]]; then # checks if eww is off/no eww process running  execute 
	${EWW} daemon # if condition is true start EWW DAEMON
	sleep 0.5 # we give eww enough time to initialize before it starts its sub processes
fi

