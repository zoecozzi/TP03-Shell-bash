#!/bin/bash

#Vérification que l'utilisateur rentre bien 2 paramètres.
if [ $# -eq 2 ]
then
    CONCAT="$1$2"
    echo $CONCAT
#récupération des deux paramètres dans la variable et affichage de la variable 
else
#Condition pas respecter donc affichage d'un message d'erreur
    echo "Attention merci de renseigner 2 paramètres uniquement."
fi