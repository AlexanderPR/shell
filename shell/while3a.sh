#!/bin/sh

while read f
do
  case $f in
	  hello) echo english ;;
	  howdy) echo american ;;
	  hej) echo svenska ;;
	  *) echo "något skitspråk" ;;
  esac
done # < myfile

