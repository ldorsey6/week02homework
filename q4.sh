#!/bin/bash

SOURCE=~/'project'
DESTINATION=~/'public_html'
BEHAVIOR=$(echo $COPY_ALL)

for i in html cgi ; do
	if [ "$BEHAVIOR" = "1" ]; then
		cp $SOURCE/$i $DESTINATION/
	elif [ $SOURCE/$i -nt $DESTINATION/$i ]; then
		cp $SOURCE/$i $DESTINATION/
	fi
done 
