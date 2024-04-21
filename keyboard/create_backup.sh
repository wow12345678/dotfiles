#!/usr/bin/env bash

if [ $(whoami) != root ]; then
	echo "Please run this script using sudo"
	exit 1
fi

if [ -d "/usr/share/X11/xkb/rulesBACKUP" ] || [ -d "/usr/share/X11/xkb/symbolsBACKUP" ]; then
	read -p "Backup files found, overwrite? (y/N) " RESP
	if ! [ "$RESP" = "y" ]; then
		echo "exiting..."
		exit 1
	fi
fi

if [ ! -d "/usr/share/X11/xkb/rulesBACKUP" ]; then
	mkdir /usr/share/X11/xkb/rulesBACKUP
fi

if [ ! -d "/usr/share/X11/xkb/symbolsBACKUP" ]; then
	mkdir /usr/share/X11/xkb/symbolsBACKUP
fi

echo "Creating copies for backup:"

cp -r /usr/share/X11/xkb/rules/* /usr/share/X11/xkb/rulesBACKUP/.
echo -e "/usr/share/X11/xkb/rulesBACKUP has been created."

cp -r /usr/share/X11/xkb/symbols/* /usr/share/X11/xkb/symbolsBACKUP/.
echo -e "/usr/share/X11/xkb/symbolsBACKUP has been created."

echo -e "Creating backups done."
