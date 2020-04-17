#!/bin/sh

rm -rf app

while IFS= read -r line; do 

    name=$(echo $line| cut -d ' ' -f1)
    url=$(echo $line| cut -d ' ' -f2)
    
    
    if [ "$name" == "$1" ]; then
	rm -rf download
	mkdir -p download
	(
	  cd download
	  curl -L $url > download.zip
	  unzip download.zip
	  rm download.zip
	)
	mkdir -p app
	cp -r download/upload/* app
	rm -rf download
	
	touch app/config.php app/admin/config.php
	rm app/config-dist.php app/admin/config-dist.php

    fi

done < ./download.txt