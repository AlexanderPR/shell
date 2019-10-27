#!/bin/sh

echo "please talk to me"

while :
do
	read INPUT_STRING
	case $INPUT_STRING in
		hello)
			echo "heello yourself duide"
			;;
		bye)
			echo "see you soon"
			break
			;;
		kill)
			exit
			;;
		*)
			echo "sorry, dont understand"
			;;
	esac
done
echo
echo "that's al folks"
