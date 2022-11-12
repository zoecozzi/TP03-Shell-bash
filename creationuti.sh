#!/bin/bash
ROOT_UID=0
SUCCES=0
UTILISATEUR_EXISTANT=70

# Exécuter le script en tant que root. 
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Vous devez être root pour exécuter ce script"
  exit $PAS_ROOT
fi  

#vérification que les 2 arguments sont valides
if [ $# -eq 2 ]; then
nomutilisateur=$1
motdepasse=$2

  # Vérifier que l'utilisateur n'existe pas déjà
  grep -q "$nomutilisateur" /etc/passwd
  if [ $? -eq $SUCCES ] 
  then	
  echo "L'utilisateur $nomutilisateur existe déjà."
    echo "Merci de choisir un autre nom d'utilisateur."
  exit $UTILISATEUR_EXISTANT
  fi  


  useradd -p `mkpasswd "$motdepasse"` -d /home/"$nomutilisateur" -m -g users -s /bin/bash "$nomutilisateur"

  echo "Le compte utilisateur est bien configuré"

else
        echo  " Ce script a besoin de 2 arguments que vous devez donner $# "
        echo  " Tu dois appeler le script $0 avec le nom d'utilisateur et le mot de passe "
fi

exit 0