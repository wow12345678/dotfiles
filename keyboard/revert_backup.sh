#!/usr/bin/env bash

if [ $(whoami) != root ]; then
	echo "Please run this script using sudo"
	exit 1
fi

if [ ! -d "/usr/share/X11/xkb/rulesBACKUP" ] || [ ! -d "/usr/share/X11/xkb/symbolsBACKUP" ]; then
	echo -e "Backup files not found :("
	exit 1
fi

echo "Reverting backups."

cp -r /usr/share/X11/xkb/rulesBACKUP/* /usr/share/X11/xkb/rules/.
echo -e "/usr/share/X11/xkb/rules reverted to backups."

cp -r /usr/share/X11/xkb/symbolsBACKUP/* /usr/share/X11/xkb/symbols/.
echo -e "/usr/share/X11/xkb/symbols reverted to backups."

echo -e "Reverting to backups completed."
