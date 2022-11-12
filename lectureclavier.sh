#!/bin/bash
Script qui propose à l’utilisateur de visualiser page par page chaque fichier texte du
répertoire spécifié en argument.
for file in $(file -i "$1"* | grep " text/plain;" | cut -d: -f1); do
  read -r -p "Voulez-vous lire le fichier $file ? [O/n] " answer
  if [ "$answer" = "O" ] || [ "$answer" = "o" ] || [ -z "$answer" ]; then
    more "$file"
  else
    echo "Fichier $file ignoré"
  fi
done