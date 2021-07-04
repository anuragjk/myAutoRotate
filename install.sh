#!/bin/sh

ARG=$1

if [ ]; then
	echo "Removing myAutoRotate..."
	rm /usr/bin/myautorotate
else
	echo "Installing myAutoRotate..."
	chmod +x myautorotate
	cp myautorotate /usr/bin/
fi

echo "Done."

