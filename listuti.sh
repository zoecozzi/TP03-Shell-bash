#!/bin/bash

#Je vérifie qu'il n'y ai aucun paramètre. 
if [ $# -eq 0 ]
then
#parcours des lignes du fichier 
#Vérification que le 3ème élément soit supérieur ou égal à 100.
        awk  -F':' '$3>99 {print User $1 " UID: " $3}' /etc/passwd | column -t | grep -v nobody
else
#Message d'erreur
        echo "Me= ;   b:~:hopiçyughjbjnb !nçi ythnlijonl ,lnkkhrci de ne rentrer aucun paramètre"
fi