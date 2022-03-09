#!/bin/sh

python3 manage.py migrate --no-input

exec gunicorn \
    --workers 3 \
    --bind 0.0.0.0:8000 \
    django_.wsgi:application
