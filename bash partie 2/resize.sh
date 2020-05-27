#!/bin/bash 

dossier=dossier;
for i in "$dossier"/*.{jpeg,jpg};
do
	if [ -f $i ]
	then
		out="$(basename "$i")"
		echo "IMAGE : $i RESIZED 50%"
		convert -resize 50% $i $dossier/"RESIZE_"$(basename $i);
	fi
done

ls -l dossier
