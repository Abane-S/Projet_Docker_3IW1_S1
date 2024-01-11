# 🌐 Projet Docker & Laravel - Multi-Service Web Application

Bienvenue dans notre projet Docker & Laravel ! Ce projet a été conçu dans le cadre d'un TP pour le cours docker  dans l'école ESGI. Il présente une application web multi-service innovante et dynamique, mettant en avant nos compétences avancées en matière de développement web et de gestion de conteneurs Docker.

## 🚀 Le Défi

Le principal défi de ce projet était de créer une architecture robuste et flexible utilisant Docker. Nous avons relevé ce défi en déployant deux services Nginx, deux services PHP et une base de données MySQL, le tout orchestré avec élégance grâce à Docker Compose. Chaque service Nginx sert le même site Laravel mais avec des configurations distinctes pour assurer une expérience utilisateur unique et des performances optimales.

### Points Clés du Projet

- **Double Service Nginx**: Deux instances de serveurs web Nginx offrant une redondance et une répartition de charge efficaces.
- **Services PHP & Laravel**: Utilisation de Docker pour déployer des services PHP avec Laravel, automatisant les tâches telles que `composer install` et `npm run build`.
- **Base de Données MySQL**: Intégration d'une base de données MySQL pour une gestion des données cohérente et sécurisée.
- **Automatisation et Scripting**: Scripts personnalisés pour automatiser des tâches répétitives, améliorant l'efficacité du déploiement et de la maintenance.

## ⚙️ Comment lancer le projet

Pour démarrer et interagir avec le projet, suivez ces étapes :

1. **Clonez le Projet** :
   Clonez ce projet depuis notre [répertoire GitHub](https://github.com/MagnusDot/TP-Final-3IW-ESGI).

    ```bash
    git clone https://github.com/MagnusDot/TP-Final-3IW-ESGI.git
    ```

2. **Lancez Docker Compose** :
   À la racine du projet, exécutez :

    ```bash
    docker-compose up -d
    ```

    Cela construira et démarrera tous les services nécessaires.

3. **Exécutez le Script `execute-commands.sh`** :
   Une fois que tous les services sont en cours d'exécution, exécutez le script `execute-commands.sh` pour initialiser les applications Laravel. Ce script s'occupera de l'installation des dépendances, de la migration de la base de données et de la génération des clés.

    ```bash
    ./execute-commands.sh
    ```

4. **Accédez aux Applications Web** :
   Ouvrez votre navigateur et accédez aux URLs des serveurs Nginx :

    - Nginx 1 (Serveur 1) : `http://localhost:8081`
    - Nginx 2 (Serveur 2) : `http://localhost:8082`

5. **Inscription et Connexion** :
   Inscrivez-vous et connectez-vous sur les deux instances du site pour tester les fonctionnalités d'authentification.

6. **Interagissez avec l'Application** :
   Explorez les différentes fonctionnalités offertes par l'application Laravel.



## 📋 Description Technique

- **Docker & Docker Compose**: Utilisés pour créer une architecture de services isolés et interconnectés.
- **Laravel**: Framework PHP pour le développement rapide et sécurisé d'applications web.
- **Nginx**: Serveur web performant et polyvalent pour servir les applications Laravel.
- **MySQL**: Base de données relationnelle pour une gestion efficace des données.


