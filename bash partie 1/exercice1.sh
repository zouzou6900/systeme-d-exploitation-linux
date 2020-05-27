#!/bin/bash

#Amaury Meersman exercice 1 
warning='Information manquantes pour créer le ficher et son contenu'
read -p 'Entrez le nom du fichier à créer : ' nom
read -p 'Indiquez le texte à placer dans votre fichier : ' message
if [ -z $nom ] || [ -z $message ]
then
	echo -e "\033[31m$warning\033[0m"
else
	touch $nom
	echo $message>$nom
fi

