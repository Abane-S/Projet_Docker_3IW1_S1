#!/bin/bash

# Récupérer les IDs des conteneurs PHP
ids=$(docker ps --format '{{.ID}}: {{.Names}}' | grep "php[0-9]-1" | cut -d ':' -f 1)

# Pour chaque ID de conteneur
for id in $ids; do
    # Exécute la commande "composer install" dans le conteneur
    docker exec $id composer install 0>> /dev/null 1>> /dev/null
    # Affiche un message
    echo "Commande 'composer install' exécutée dans le conteneur $id"

    # Exécute la commande "npm install" dans le conteneur
    docker exec $id npm install 0>> /dev/null 1>> /dev/null
    # Affiche un message
    echo "Commande 'npm install' exécutée dans le conteneur $id"

    # Exécute la commande "npm run build" dans le conteneur
    docker exec $id npm run build 0>> /dev/null 1>> /dev/null
    # Affiche un message
    echo "Commande 'npm run build' exécutée dans le conteneur $id"

    # Exécuter la commande artisant key:generate dans le conteneur
    docker exec $id php artisan key:generate 0>> /dev/null 1>> /dev/null 
    # Afficher un message
    echo "Clé générée pour le conteneur $id"

    # Exécuter la commande php artisan migrate:fresh dans le conteneur
    docker exec $id php artisan migrate:fresh --seed 0>> /dev/null 1>> /dev/null             
    # Afficher un message
    echo "Migration et seeding effectués pour le conteneur $id"

    # Exécuter la commande chown dans le conteneur
    docker exec $id chown -R www-data:www-data /var/www/html 0>> /dev/null 1>> /dev/null
    # Afficher un message
    echo "Permissions ajustées pour le conteneur $id"
done
