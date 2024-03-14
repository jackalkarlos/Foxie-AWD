#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'
last_result=""
last_user_count=""
last_system_cmd=""
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


echo -e "${GREEN}INFO: Scanning Possible Vulnerable PHP Files. ${NC}"
echo -e "${GREEN}"
grep -roE 'system\(([^)]+)\)' /var/www/html
echo -e "${nc}"
while true; do
  yeni_result=$(last)
  yeni_user_count=$(wc -l < /etc/passwd)
  yeni_last_system_cmd=$(grep -roE 'system\(([^)]+)\)' /var/www/html)

  if [ $? -eq 0 ]; then
    if [ "$yeni_result" != "$last_result" ] && [ "$first_run" = false ]; then
      echo -e "${RED}ALERT: NEW ENTRY ON LAST! ${NC}"
      last
      new_line=$(last | head -n 1)
      read -p "${GREEN}INPUT: Do you wanna block this connection? (Y/N): " kick_option
      if [ "$kick_option" == "Y" ] || [ "$kick_option" == "y" ]; then
        username=$(echo "$new_line" | awk '{print $1}')
        sudo pkill -KILL -u "$username"
        echo "User succesfully kicked."
      fi
    fi

    if [ "$yeni_user_count" != "$last_user_count" ] && [ "$first_run" = false ]; then
      echo -e "${RED}ALERT: NEW USER ON /ETC/PASSWD! ${NC}"
      cat /etc/passwd
    fi

    if [ "$yeni_last_system_cmd" != "$last_system_cmd" ] && [ "$first_run" = false ]; then
      echo -e "${RED}ALERT: NEW VULNERABLE FILE ON /VAR/WWW/HTML! ${NC}"
      echo -e "${GREEN}"
      grep -roE 'system\(([^)]+)\)' /var/www/html
      echo -e "${NC}"
    fi

    last_result="$yeni_result"
    last_user_count="$yeni_user_count"
    last_system_cmd="$yeni_last_system_cmd"
    first_run=false
  else
    echo -e "${RED}ALERT: SOMETHING WRONG WITH THIS SCRIPT. IT'S CLOSING."
    exit 1
  fi

  sleep 3
done
