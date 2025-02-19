#!/bin/bash


IND_IPs="/home/muni/Shell-Scripts/Chrome_Driver_Uptade/IND.txt"

si=1
x=0

clear
echo -e '\033[1;36m' " \n \n Which version You want to verify ? \n"

read ver

Linux=chromedriver_linux64_v$ver
MAC=chromedriver_mac64_v$ver

Pass=iamceo@2013

Path1=/usr/lib/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux/

Path2=/home/radmin/.npm-packages/lib/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux/
Path3=/Users/radmin/.npm-packages/lib/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac/

Path4=/usr/local/avm/versions/1.19.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path5=/usr/local/avm/versions/1.20.2/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path6=/usr/local/avm/versions/1.21.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path7=/usr/local/avm/versions/2.0.0/node_modules/appium-flutter-driver/node_modules/appium-chromedriver/chromedriver/linux

Path8=/usr/local/avm/versions/1.19.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac
Path9=/usr/local/avm/versions/1.20.2/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac
Path10=/usr/local/avm/versions/1.21.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac
Path11=/usr/local/avm/versions/2.0.0/node_modules/appium-flutter-driver/node_modules/appium-chromedriver/chromedriver/mac

Path12=/home/radmin/.appium/node_modules/appium-uiautomator2-driver/node_modules/appium-chromedriver/chromedriver/linux
Path13=/Users/radmin/.appium/node_modules/appium-uiautomator2-driver/node_modules/appium-chromedriver/chromedriver/mac

Path14=/home/radmin/.appium/node_modules/appium-chromedriver/chromedriver/linux
Path15=/home/radmin/

Path16=/usr/local/avm/versions/1.22.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path17=/usr/local/avm/versions/1.22.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac

Path18=/usr/local/avm/versions/1.22.3/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path19=/usr/local/avm/versions/1.22.3/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac

clear

echo -e '\033[0;32m' "
	               	==>	  \033[1;33m Validations of chromedrivers in below IP rBoxes \033[0;32m	  <==\n\n
   
\033[0;32m  ## \033[0;35m $(cat $IND_IPs | awk '{ printf("%s\033[0;32m  ##  \033[0;35m", $1) }')
\033[0;32m  
"

echo -e '\033[0;36m' " press enter to continue if the IPs are correct . . ."

read $Prompt

while read -u 3 ip
do
#x=0
#	if [ "$ip" == "$x" ]
#	then
#	echo " finished "
#	else

#		ip=$( echo "$line" |cut -d\: -f1 )
#		echo -e '\033[1;33m' "\n	     IP is : $ip \n \n"
		
#		Pass=$( echo "$line" |cut -d\: -f2 )
#		echo -e '\033[1;33m' "\n	     IP is : $Pass \n \n"
		echo -e '\033[1;32m' "The rBox No. $si :\033[1;34m $ip \033[0;33m \n"		
		OS=$(sshpass -p $Pass ssh radmin@$ip uname)
#		echo -e '\033[1;33m' "\n	     OS is : $OS \n \n"
	

	
		if [ "$OS" == Linux ]
			then
			echo -e  "\033[1;33m	     ==>  This is a Linux Server \n \033[0;33m"
			echo -e " 		==> Validating Chromedriver in below path of this rBox \n \n "
			echo -e '\033[1;33m' "\n 		1. $Path1 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path1 | grep $Linux
			echo -e '\033[1;33m' "\n 		2. $Path2 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path2 | grep $Linux
			echo -e '\033[1;33m' "\n 		3. $Path4 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path4 | grep $Linux
			echo -e '\033[1;33m' "\n 		4. $Path5 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path5 | grep $Linux
			echo -e '\033[1;33m' "\n 		5. $Path6 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path6 | grep $Linux
			echo -e '\033[1;33m' "\n 		6. $Path7 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path7 | grep $Linux
			echo -e '\033[1;33m' "\n 		7. $Path12 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path12 | grep $Linux
			echo -e '\033[1;33m' "\n 		8. $Path16 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path16 | grep $Linux
			echo -e '\033[1;33m' "\n 		9. $Path18 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path18 | grep $Linux
			
			
			echo -e '\033[1;33m' "\n 		10. $Path14 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path14 | grep $Linux
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
			echo -e " 		==> Validating Chromedriver in below path of this rBox \n \n "
			echo -e '\033[1;35m' "\n 		1. $Path3 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path3 | grep $MAC
			echo -e '\033[1;35m' "\n 		2. $Path8 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path8 | grep $MAC
			echo -e '\033[1;35m' "\n 		3. $Path9 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path9 | grep $MAC
			echo -e '\033[1;35m' "\n 		4. $Path10 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path10 | grep $MAC
			echo -e '\033[1;35m' "\n 		5. $Path11 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path11 | grep $MAC
			echo -e '\033[1;35m' "\n 		6. $Path13 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path13 | grep $MAC
			echo -e '\033[1;35m' "\n 		7. $Path17 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path17 | grep $MAC
			echo -e '\033[1;35m' "\n 		8. $Path19 \n \033[0;36m"
			sshpass -p $Pass ssh radmin@$ip ls -lrt $Path19 | grep $MAC
			
			echo -e '\033[1;35m' "\n	     DONE \n \n"
						
		fi
#	fi
		si=$(($si+1))	
#	else
#	echo " finished "
#	fi
done 3< $IND_IPs

