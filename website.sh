#/bin/bash
website="https://device.pcloudy.com"

#check if website is accessiable or not

if curl --output /dev/null --silent --head --fail "$website" ; then
	echo "website is up."

else
	echo "website is down."			
		
fi

