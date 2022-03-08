#!/bin/sh

# development entrypoint, used by docker-compose

python3 manage.py tailwind install
python3 manage.py tailwind start &

python3 manage.py makemigrations --no-input
python3 manage.py migrate --no-input
python3 manage.py collectstatic --no-input


exec python3 manage.py runserver 0.0.0.0:8000
