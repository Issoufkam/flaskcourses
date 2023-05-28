# Utilisez une image de base contenant Python et Flask
FROM python:3.10-slim

# Installez Git pour pouvoir cloner le dépôt
RUN apt-get update && apt-get install -y git

# Créez un répertoire de travail dans le conteneur
WORKDIR /app

# Clonez le dépôt GitHub
RUN git clone https://github.com/Issoufkam/flaskcourses.git .

# Installez les dépendances du projet Flask
RUN pip install -r requirements.txt

# Exposez le port sur lequel votre application Flask s'exécute
EXPOSE 5000

# Démarrez l'application Flask
CMD ["python", "app.py"]
