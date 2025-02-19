#!/bin/bash


IND_IPs="/home/muni/Shell-Scripts/Chrome_Driver_Uptade/IND.txt"

si=1
x=0

Version=132.0.6834.83

Linux=chromedriver_linux64_v$Version
MAC=chromedriver_mac64_v$Version

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

Path16=/usr/local/avm/versions/1.22.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path17=/usr/local/avm/versions/1.22.0/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac

Path18=/usr/local/avm/versions/1.22.3/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path19=/usr/local/avm/versions/1.22.3/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac

Path18=/usr/local/avm/versions/1.22.3/node_modules/appium/node_modules/appium-chromedriver/chromedriver/linux
Path19=/usr/local/avm/versions/1.22.3/node_modules/appium/node_modules/appium-chromedriver/chromedriver/mac

clear
cd ~/Latest_ChromeDriver/
ls -lrt


echo -e '\033[0;32m' "
	               	==>	  \033[1;33m Sending chromedriver $Version in below IP rBoxes \033[0;32m	  <==\n\n
   
\033[0;32m  ## \033[0;35m $(cat $IND_IPs | awk '{ printf("%s\033[0;32m  ##  \033[0;35m", $1) }')
\033[0;32m  
"

echo -e '\033[1;36m' " 

press enter to continue if the IPs are correct "

read $Prompt

while read -u 3 ip
do

		echo -e '\033[1;32m' "The rBox No. $si :\033[1;34m $ip \033[0;33m \n"
		OS=$(sshpass -p $Pass ssh radmin@$ip uname)
	
		if [ "$OS" == Linux ]
			then
			echo -e '\033[1;33m' "	     ==>  This is a Linux Server \n \033[0;33m"
			echo -e " 		==> Sending Chromedriver To below path of this rBox \n \n "
			echo -e '\033[1;33m' " 		1. $Path1 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path1
			echo -e '\033[1;33m' " 		2. $Path2 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path2
			echo -e '\033[1;33m' " 		3. $Path4 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path4
			echo -e '\033[1;33m' " 		4. $Path5 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path5
			echo -e '\033[1;33m' " 		5. $Path6 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path6
			echo -e '\033[1;33m' " 		6. $Path7 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path7
			echo -e '\033[1;33m' " 		7. $Path12 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path12
			echo -e '\033[1;33m' " 		8. $Path16 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path16
			echo -e '\033[1;33m' " 		9. $Path18 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path18
			echo -e '\033[1;33m' " 		10. $Path14 \n \033[0;36m"
			sshpass -p $Pass scp $Linux radmin@$ip:$Path14
			echo -e '\033[1;33m' "	     DONE \n \n"
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
			echo -e " 		==> Sending Chromedriver To below path of this rBox \n \n "
			echo -e '\033[1;35m' " 		1. $Path3 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path3
			echo -e '\033[1;35m' " 		2. $Path8 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path8
			echo -e '\033[1;35m' " 		3. $Path9 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path9
			echo -e '\033[1;35m' " 		4. $Path10 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path10
			echo -e '\033[1;35m' " 		5. $Path11 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path11
			echo -e '\033[1;35m' " 		6. $Path13 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path13
			echo -e '\033[1;35m' " 		7. $Path17 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path17
			echo -e '\033[1;35m' " 		8. $Path19 \n \033[0;36m"
			sshpass -p $Pass scp $MAC radmin@$ip:$Path19
			
			echo -e '\033[1;35m' "	     DONE \n \n"
						
		fi

		si=$(($si+1))	

done 3< $IND_IPs
echo -e '\033[00m' " "
