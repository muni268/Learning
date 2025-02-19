#!/bin/bash

IND_IPs="/home/muni/Shell-Scripts/Chrome_Driver_Uptade/IND.txt"

Path1=/opt/build/
si=1
x=0

Pass=iamceo@2013


clear



echo -e '\033[0;32m' "
	               	==>	  \033[1;33m Validations of SSH Connection in below IP rBoxes \033[0;32m	  <==\n\n
   
\033[0;32m  ## \033[0;35m $(cat $IND_IPs | awk '{ printf("%s\033[0;32m  ##  \033[0;35m", $1) }')
\033[0;32m  
"


echo -e '\033[1;36m' " 

press enter to continue if the IPs are correct "

read $Prompt

while read -u 3 ip
do
		
#		ip=$( echo "$line" |cut -d\: -f1 )
#		echo -e '\033[1;33m' "\n	     IP is : $ip \n \n"
		
#		Pass=$( echo "$line" |cut -d\: -f2 )
#		echo -e '\033[1;33m' "\n	     IP is : $Pass \n \n"



		echo -e '\033[1;32m' "The rBox No. $si :\033[1;34m $ip \033[0;33m \n"
		OS=$(sshpass -p $Pass ssh radmin@$ip uname)

		if [ "$OS" == Linux ]
			then
			echo -e  '\033[1;33m' "	     ==>  This is a Linux Server \n \033[0;33m"
			echo -e " 		==> Validating SSH in this rBox \n \n "
			sshpass -p $Pass ssh radmin@$ip
			echo -e '\033[1;33m' "\n	     DONE \n \n"
		fi


		if [ "$OS" == Darwin ]
			then
			chip=$(sshpass -p $Pass ssh radmin@$ip uname -m)
				if [ "$chip" == arm64 ]
				then
					echo -e '\033[1;35m' "	     ==>  This is a M1 MAC Server \n \033[0;35m"
				else
					echo -e '\033[1;35m' "	     ==>  This is a Intel MAC Server \n \033[0;35m"
				fi
			echo -e " 		==> Validating SSH in this rBox \n \n "
			sshpass -p $Pass ssh radmin@$ip
			echo -e '\033[1;35m' "\n	     DONE \n \n"						
		fi

		si=$(($si+1))	

done 3< $IND_IPs
