#!bin/bash

# importer un projet github sur un pc neuf :

read -p "Entrez l'URL du projet github : " url
git clone $url
if [ $? -eq 0 ]; then
    echo "Importation réussie"
else
    echo "Echec, vous êtes nul"
fi
