#!/bin/bash

#On vérifie qu'il n'y a qu'un seul paramètre
if [ $# -eq 1 ]
    then
    if [[ -d $1 ]]
        then path_file="directory"
    
#Vérification que le fichier est un fichier normal
    elif [[ -f $1 ]]
        then 
        path_file="fichier normal"
#Vérification que le fichier n'est pas vide
        if [ -s $1 ]
            then 
            path_file="$path_file n'est pas vide"
        else
            path_file="$path_file est vide"
        fi
    else 
        echo "$1 n'est pas valide"
        exit 1
    fi

    echo "Le fichier se nommant $1 correspond à un $path_file."

#Vérification qu'il y a une permission de lecture
    if [ -r $1 ]
        then
        permission="lecture"
    fi
    #Vérification qu'il y a une permission d'écriture
    if [ -w $1 ]
        then
        permission="$permission écriture"
    fi
    #Vérification qu'il y a une permission d'exécution
    if [ -x $1 ]
        then 
        permission="$permission exécution"
    fi

    echo "$0 peut être utilisé par $USER et il peut faire comme action : $permission"
else
    echo "ERREUR, il faut rentrer 1 paramètre."
fi
    