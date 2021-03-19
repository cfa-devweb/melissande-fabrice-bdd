# MODULE BASE DE DONNEES #
Ce projet est dans le cadre d'une formation de Développement Web afin d'évaluer les compétences nécessaires sur la partie M5-S4 du Trello, "Mettre en place une base de données"

## Modélisation du projet sous formes : MCD, MPD, MLD
Mise en place des modèles de conception de schéma de base de données d'une bibliothèque "library"<br><br>
### Choix du processus d'execution :
Pour mener à bien un projet de création de base de données, nous avons décidé d'utiliser la méthode MERISE qui permet d'établir une représentation claire des données en différents niveaux, avec des relations entres elles, afin de faciliter le développement de la base de données.<br>
 * Modèle Conceptuel de Données (MCD) : Il va définir la construction de notre base de données. 
 * Modèle Physique de Données (MPD) et Modèle Logique de Données (MLD) : Il vont nous permettre de mettre en place notre base de données.

### Exportation du Modèle Logique de Données
Une fois le MLD terminé, exporter en effectuant > File > Export > Forward Engineer SQL CREATE script..<br>
--> Nommer le fichier SQL exporté "library.sql"
### Choix du processus d'execution :
Afin d'obtenir le script SQL de notre base de données, nous avons dû effectuer la manipulation (dite précédemment) via MySQL Worckbench.<br>
Cela nous a permis d'optimiser notre temps pour la récupération de notre base de données "library" en fichier SQL. 

## MODULE SCRIPT
### Script de création de base de données
Ce script est au format .batch et permet de lancer un script de création de base de données.<br>
--> Nommé "creation.bat"
### Choix du processus d'execution :
Pour réaliser ce script, nous avons décidé de créer des variables nous permettent de stocker des données utilisateur (login, mot de passe).<br>
Cela nous a permis de pouvoir appeler les données dans les variables PATH les rendent dynamiques à l'utilisateur (sorte d'utilitaire).<br>
Dans cela, nous avons souhaité que l'utilisateur puisse bénéficier et modifier, quand il le souhaite, les données du PATH.

### Script d'insertion des données au format .csv dans la table "books" de la base "library"
Ce script est au format .batch et permet de lancer un script d'insertion de données dans une table.<br>
--> Nommé "insertion.bat"
### Choix du processus d'execution :
Notre objectif de la réalisation de ce script fut, dans un premier temps, l'insertion d'un fichier externe au format CSV.<br>
Cela nous a conduit à l'idée de réaliser un script d'automatisation des données, réutilisable à l'avenir. 

### Script de sauvegarde de base de données
Ce script est au format .batch et permet de lancer un script de sauvegarde de base de données.<br>
--> Nommé "save.bat"<br>
--> le fichier "sauvegarde.sql" sera créé automatiquement et rendu disponible à l'utilisateur.
### Choix du processus d'execution :
Afin d'effectuer une sauvegarde permanente de notre base de données, nous avons décidé de créer un script en utilisant la commande présente dans MySQL, 'mysqldump'.<br>
Cela nous a permis de générer un fichier immédiat nommé "sauvegarde" et réutilisable, à tout moment, par l'utilisateur de la base de données.


