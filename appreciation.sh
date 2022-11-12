#!/bin/bash
while [ 1 ]
do
    read -p "Votre note : " note
    if [ $note = "q" ]
    then exit
    elif [ $note -ge 16 ]
    then echo "très bien"
    elif [ $note -ge 14 ]
    then echo "bien"
    elif [ $note -ge 12 ]
    then echo "assez bien"
    elif [ $note -ge 10 ]
    then echo "moyen"
    else echo "insuffisant"
    fi
done
