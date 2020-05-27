#!/bin/bash

function taille {

read -p "Entrez l'adresse URL du zip : " dossier

extenstion=${dossier##*\.}
name=$(basename -s .zip $dossier)

if [ "$extenstion" = "zip" ]
then
	wget $dossier -O dossier.zip
        out=$(wget -N $dossier 2>&1)

        if [[ $? -eq 0 && $out ]]
        then
                txt=$(unzip -l $name.zip *.txt | tail -n 1 | awk '{print $1}')
                jpg=$(unzip -l $name.zip *.jpg | tail -n 1 | awk '{print $1}')
                jpeg=$(unzip -l $name.zip *.jpeg | tail -n 1 | awk '{print $1}')

                echo -e "Get size of txt : $txt\nGet size of jpg : $jpg\nGet size of jpeg : $jpeg"
        else
                echo "Aucune donnée dans ce zip"
        fi
else
        echo "Erreur veuillez mettre un lien zip"
fi
}
taille
