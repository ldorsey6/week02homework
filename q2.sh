#!/bin/bash

SOURCE=~/'project'
DESTINATION=~/'public_html'


for i in html cgi ; do
	cp $SOURCE/$i $DESTINATION/
done 
