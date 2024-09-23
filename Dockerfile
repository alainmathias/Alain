# Utiliser la dernière version de PHP avec Apache
FROM php:8.1-apache

# Activer le module mod_rewrite
RUN a2enmod rewrite

# Créer un répertoire pour l'application
WORKDIR /var/www/html

# Modifier les droits d'utilisateur pour Apache
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

# Copier votre code dans le conteneur
COPY . /var/www/html

# Définir les permissions pour l'utilisateur web
RUN chown -R www-data:www-data /var/www/html
