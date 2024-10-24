
# Computer Use Demo - Claude AI

## Description

Ce projet permet de tester la démo **Computer Use** proposée par **Claude AI** (développé par **Anthropic**). L'objectif de cette démo est de montrer comment un agent basé sur Claude AI peut interagir avec un environnement graphique, comme un bureau virtuel, pour accomplir des tâches automatisées.

L'environnement est configuré avec Docker pour garantir que tous les utilisateurs puissent facilement lancer la démo sur leurs machines locales sans besoin de configurations complexes.

## Prérequis

Avant de commencer, vous devez avoir les éléments suivants installés sur votre machine :
- **Docker** : pour exécuter les conteneurs
- **Docker Compose** : pour simplifier la gestion du conteneur
- **Make** (ou un équivalent) pour faciliter l'exécution des commandes du projet (facultatif)
  
### Installation de Docker

Si vous n'avez pas Docker installé, vous pouvez suivre les instructions sur le site officiel : [Installer Docker](https://docs.docker.com/get-docker/).

### Installation de Make (Facultatif)

Pour utiliser les commandes Make incluses dans ce projet sous Windows, vous pouvez installer `make` via [Chocolatey](https://chocolatey.org/) ou en utilisant [Git Bash](https://gitforwindows.org/).

## Instructions

### 1. Cloner le projet

Clonez le dépôt Git sur votre machine locale :

```bash
git clone https://github.com/<votre-utilisateur>/computer-use-demo.git
cd computer-use-demo
```

### 2. Configurer votre clé API Claude AI

Vous aurez besoin d'une clé API Claude AI (Anthropic) pour exécuter cette démo. Si vous n'en avez pas, vous pouvez la récupérer sur le site d'Anthropic. Une fois la clé obtenue, ajoutez-la dans un fichier `.env` à la racine du projet :

```
ANTHROPIC_API_KEY=sk-ant-api03-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

### 3. Lancer la démo

Pour lancer la démo, vous pouvez simplement exécuter la commande suivante si vous avez installé **Make** :

```bash
make up
```

Cela lancera le conteneur Docker configuré avec la démo. Une fois démarré, vous pourrez accéder à l'interface utilisateur via votre navigateur à l'adresse suivante :

```
http://localhost:8080
```

Si vous n'utilisez pas **Make**, vous pouvez démarrer le conteneur directement avec Docker Compose :

```bash
docker-compose up -d
```

### 4. Arrêter la démo

Lorsque vous souhaitez arrêter la démo, vous pouvez utiliser la commande suivante :

```bash
make down
```

Ou directement avec Docker Compose :

```bash
docker-compose down
```

### 5. Nettoyer les conteneurs et images

Si vous souhaitez supprimer les conteneurs, les volumes et nettoyer les images Docker, vous pouvez exécuter :

```bash
make prune
```

Cela supprimera les images et nettoiera tout l'environnement Docker.

## Structure du Projet

- **docker-compose.yml** : Définit la configuration des conteneurs Docker pour exécuter la démo.
- **Makefile** : Fichier qui contient des commandes utiles pour gérer le cycle de vie du conteneur Docker.
- **.env** : Fichier où la clé API Claude AI est stockée pour être utilisée dans le conteneur.

## Contributeurs

- [inaranjo](https://github.com/Arcadiastyx)

