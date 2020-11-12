#!/bin/bash
#
# Create a Django project
# This instructs Compose to run django-admin startproject `docker-compose-django-postgresql` in a container, 
# using the web service’s image and configuration.
# Because the web image doesn’t exist yet, Compose builds it from the current directory, 
# as specified by the build: . line in docker-compose.yml.
# Once the web service image is built, Compose runs it and executes the django-admin startproject command
# in the container.
# sudo docker-compose run web django-admin startproject docker-compose-django-postgresql .
docker-compose run web django-admin startproject composedjango .