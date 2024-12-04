# Utiliser l'image officielle Python 3.10 comme image de base
FROM python:3.10-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt /app/

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application dans le conteneur
COPY app/ /app/

# Exposer le port sur lequel l'application va écouter
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["python", "app.py"]
