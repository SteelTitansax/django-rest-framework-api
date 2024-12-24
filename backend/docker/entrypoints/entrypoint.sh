#!/bin/sh
chmod +x docker/entrypoints/entrypoint.sh
python manage.py makemigrations
python manage.py migrate
python manage.py test

exec "$@"