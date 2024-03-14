#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'
last_result=""
last_user_count=""
first_run=true

echo -e "              ${GREEN}FOXIE DEFENCE                "
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


while true; do
  yeni_result=$(last)
  yeni_user_count=$(wc -l < /etc/passwd)

  if [ $? -eq 0 ]; then
    if [ "$yeni_result" != "$last_result" ] && [ "$first_run" = false ]; then
      echo -e "${RED}ALERT: NEW ENTRY ON LAST! ${NC}"
      last
    fi

    if [ "$yeni_user_count" != "$last_user_count" ] && [ "$first_run" = false ]; then
      echo -e "${RED}ALERT: NEW USER ON /ETC/PASSWD! ${NC}"
      cat /etc/passwd
    fi

    last_result="$yeni_result"
    last_user_count="$yeni_user_count"
    first_run=false
  else
    echo -e "${RED}ALERT: SOMETHING WRONG WITH THIS SCRIPT. IT'S CLOSING."
    exit 1
  fi

  sleep 3
done
