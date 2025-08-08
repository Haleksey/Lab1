#!bin/bash

# definition des variables :

# aller sur le projet :

read -p "Choisissez le projet a uploader en collant son chemin absolu : " projet
if [-r $projet]; then
cd $projet
else
echo "$projet ne semble pas exister, vérifiez le chemin"
fi

# initialiser git :
git init
if [ $? -eq 0 ]; then
    echo "Git est initalisé"
else
    echo "Echec de l'initialisation"
fi
# ajouter le dossier sur github depuis la racine :
git add .
git commit -m "initial commit"

# ajouter le depot GitHub comme distant :
read -p "Indiquez l'URL du GitHub " url
git remote add origin $url

