#!/bin/sh

ARG=$1
LOG="&> /dev/null"

if [ "$ARG" = "remove" ]; then
	echo "Removing myAutoRotate..."
	rm /usr/bin/myautorotate 
else
	echo "Installing myAutoRotate..."
	chmod +x myautorotate
	cp myautorotate /usr/bin/
fi

if [ "$EUID" != 0 ]; then
	echo "root permission required."
	exit 0
fi 

echo "Done."

