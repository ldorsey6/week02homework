#!/bin/bash

SOURCE=~/'project'
DESTINATION=~/'public_html'


for i in html cgi ; do
	if [ $SOURCE/$i -nt $DESTINATION/$i ]; then
		cp $SOURCE/$i $DESTINATION/
	fi
done 
