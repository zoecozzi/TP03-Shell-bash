#!/bin/bash

#$# récupère le nombre de paramètres.
echo "Bonjour, vous avez rentré $# paramètres"
#$0 récupère le nom du script, d'afficher le 3ème paramètre et d'afficher la liste des paramètres.
echo "Le nom du script est $0"
#$3 récupère le 3ème paramètre et d'afficher la liste des paramètres.
echo "Le 3ème paramètre est $3"
#$0 récupère et affiche la liste des paramètres.
echo "Voici la liste des paramètres : $@"