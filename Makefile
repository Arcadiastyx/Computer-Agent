# Variables
DOCKER_COMPOSE = docker-compose
DOCKER = docker
PROJECT_NAME = anthropic-demo

# Commandes pour lancer et arrêter le conteneur
up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

# Commande pour effacer les conteneurs et volumes inutilisés
clean:
	$(DOCKER_COMPOSE) down --volumes --remove-orphans

# Commande pour supprimer toutes les images Docker liées au projet
remove-images:
	$(DOCKER) rmi $$(docker images -q ghcr.io/anthropics/anthropic-quickstarts)

# Commande pour supprimer tous les conteneurs arrêtés, images et volumes non utilisés
prune:
	$(DOCKER) system prune -af --volumes

# Commande pour redémarrer l'environnement (stop + clean + up)
restart: down clean up
