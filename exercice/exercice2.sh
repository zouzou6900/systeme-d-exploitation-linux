#!/bin/bash

#Amaury Meersman exercice 2
attention="Element manquant pour effectuer l'opération demande"
read -p 'Entre votre nombre entier : ' nb1
read -p 'Entre votre operation (+,-,/,*) : ' op
read -p 'Entre votre deuxieme nombre entier : ' nb2 
let "a = $nb1"
let "b = $nb2"
if [ -z $nb1 ] || [ -z $nb2 ] || [ -z $op ]
then
	echo -e "\033[31m$attention\033[0m"
else
	case $op in
		"+")	
			let " r = a + b"
			echo -e "Premier nombre : $nb1\nDeuxieme nombre : $nb2\nAction : Addition\nResultat : $r"
			;;
		"-")
                        let " r = a - b"
                        echo -e "Premier nombre : $nb1\nDeuxieme nombre : $nb2\nAction : Soustraction\nResultat : $r"
                        ;;
		"/")
                        let " r = a / b"
                        echo -e "Premier nombre : $nb1\nDeuxieme nombre : $nb2\nAction : Division\nResultat : $r"
                        ;;
		"*")
			let " r = a * b"
                        echo -e "Premier nombre : $nb1\nDeuxieme nombre : $nb2\nAction : Multiplication\nResultat : $r"
                      	;; 
		*)
			echo -e "\033[31mL'operateur ne peut pas etre realiser veuillez mettre un de cela (+,-,/,*)\033[0m"
			;;
	esac
fi
