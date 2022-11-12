#!/bin/bash

if [ $# -eq 1 ]
then
    if [[ -d $1 ]]
    then
        echo "####### fichier dans $1"
        for file in "$1"*
        do 
            if [[ -f "$file" ]]
            then 
                echo $file
            fi
        done 
        echo "####### reperoires dans $1"
        for file in "$1"*
        do 
            if [[ -d "$file" ]]
            then 
                echo $file
            fi
        done 
    else 
        echo "Erreur, vous devez rentrer un répertoire et non un fichier ordinaire"
    fi
else
    echo "Erreur, vous devez rentrer 1 paramètres."
fi