#!/bin/bash

# Prepare folders
mkdir -p ./bin/server/mods
mkdir -p ./bin/client/mods

# Récupère la version de github.com/oneforx/go-serge à partir du fichier go.mod
version=$(grep -oP 'github.com/oneforx/go-serge\h+\K(v\d+\.\d+\.\d+)' go.mod)

curl -LJfO https://github.com/oneforx/go-serge/releases/download/$version/go-serge-client

# Vérifie si le téléchargement a réussi
if [ -f "go-serge-client" ]; then
    echo "Préparation du dossier client réussie"
    echo "Moving go-serge-client to ./bin/client"
    mv ./go-serge-client ./bin/client

else
    echo "Préparation du dossier client échouée"
fi

curl -LJfO https://github.com/oneforx/go-serge/releases/download/$version/go-serge-server

# Vérifie si le téléchargement a réussi
if [ -f "go-serge-server" ]; then
    echo "Préparation du dossier server réussie"
    echo "Moving go-serge-server to ./bin/server"
    mv ./go-serge-server ./bin/server
else
    echo "Préparation du dossier server échouée"
fi