#!/bin/bash
#vérification quil y a bien un paramètre donné
if [ $# -eq 1 ]
  then
  #vérifier que le paramètre est bien présent dans le fichier soit en tant que nom d'utilisateur soit en tant qu'UID
    chemin="/etc/passwd"
    #Si la condition si dessous est validé alors affichage du nom d'utilisateur et de l'UID
        awk -v utilisateur=$1 -F : '{
      if(utilisateur==$1 || utilisateur==$3)
        print "Cet utilisateur nommé " $1 " existe avec comme UID : " $3 
        }' $chemin
else
#Sinon affichage d'erreur
        echo "Merci de rentrer un nom d'utilisateur ou un UID correcte"
fi