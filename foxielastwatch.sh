#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

function last_control() {
  echo -e "${RED} Foxie is watching now!"
  touch last_connections.txt
  while true
  do
    new_line=$(last | head -n 1)
    last_line=$(tail -n 1 last_connections.txt)
    if [ "$new_line" != "$last_line" ]; then
        echo -e "${RED}ALERT: NEW CONNECTION!"
        echo -e "$new_line"
        echo -e "$new_line" >> last_connections.txt
        read -p "${GREEN}INPUT: Do you wanna block this connection? (Y/N): " kick_option
        if [ "$kick_option" == "Y" ] || [ "$kick_option" == "y" ]; then
            username=$(echo "$new_line" | awk '{print $1}')
            sudo pkill -KILL -u "$username"
            echo "User succesfully kicked."
        fi
    fi
    sleep 1
  done
}

printbanner(){
echo -e "              ${GREEN}FOXIE LASTWATCH                "
echo -e "       ⣿⣿⣿⣯⣉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣉⣽⣿⣿⣿⡇"
echo -e "       ⣿⣿⣿⣟⠿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠟⣻⣿⣿⡟⡇"
echo -e "       ⣿⣿⣿⣷⠀⠀⠹⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡾⠋⠀⢐⣾⣿⣿⠃⡇"
echo -e "       ⡇⣿⣿⣿⠭⠥⠄⠈⠻⣷⣦⣤⣶⣦⣤⣤⣴⣶⣤⣴⣿⠋⠀⠠⠭⢭⣿⣿⣿⠀⡇"
echo -e "       ⡇⢻⣿⣿⣿⣶⢖⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣲⣾⣿⣿⣿⡏⠀⡇"
echo -e "       ⡇⠈⢿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⢿⣿⡟⠀⠀⡇"
echo -e "       ⡇⠀⢸⣟⢜⣿⣿⡿⣟⠟⠉⠉⠛⣿⣿⣿⣟⠋⠁⠈⠙⣻⢿⣿⣿⡸⣿⠁⠀⠀⡇"
echo -e "       ⡇⠀⣸⣿⣿⡿⠋⠉⠁⣀⣐⠢⣄⢸⣿⣿⠀⣠⢖⣂⣀⠈⠉⠛⢿⣿⣿⣄⠀⠀⡇"
echo -e "       ⡇⣼⣿⣿⣿⡷⡋⢰⠟⠻⣽⣷⢿⣿⣿⣿⣿⣷⣿⣿⠟⢳⡈⠹⣾⣿⣿⣿⣆⠀⡇"
echo -e "       ⡇⢾⣿⣿⣿⣏⠀⢸⣶⠀⠀⠀⠀⣿⣿⣿⠻⣆⠀⠀⢀⣼⡇⢈⢿⣿⣿⣿⣧⠀⡇"
echo -e "       ⡇⢻⣿⣿⣿⣯⢂⣼⣿⣷⣷⣇⣼⣿⣿⣿⠅⢸⣾⣷⣿⣿⣆⣠⣿⣿⣿⣿⡷⠀⡇"
echo -e "       ⡇⢪⢿⣿⣿⣿⣿⣿⡿⢹⣿⣿⣿⡿⠭⠅⠀⡄⡿⠉⠙⢿⣿⣿⣿⣿⣿⡿⡁⠀⡇"
echo -e "       ⡇⠀⠞⣿⣿⣿⣿⣿⣧⠈⢿⣿⡏⣿⣶⣿⠄⣧⠃⠀⢀⣵⣿⣿⣿⣿⡏⠇⠀⠀⡇"
echo -e "       ⡇⠀⠀⠘⠹⡟⣿⣿⣿⣷⣾⣿⣿⣬⠽⢭⡴⠁⠀⣰⣿⣿⣿⣿⢻⠿⠃⠀⠀⠀⡇"
echo -e "       ⡇⠀⠀⠀⠀⠀⠙⢿⢿⣿⣿⣿⢠⢉⠉⠉⠀⠀⡆⣿⣿⣿⡟⠃⠀⠀⠀⠀⠀⠀⡇"
echo -e "       ⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣼⣼⢸⣰⣸⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⡇"
echo -e "       ⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇"
echo -e "       ⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇"
echo -e "       ⣿⣿⣿⣯⣉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣉⣽⣿⣿⣿⡇"

echo -e "${RED} Printing recent 'Last' entries. "
last

}

printbanner
last_control
