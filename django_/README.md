# Django Project Template

This is a simple django project template that includes boilerplate for
technologies I normally use to support my project.

## On the Django Side of Things

- [django-rest-framework](https://www.django-rest-framework.org/#installation)
  installed and configured
- [django-tailwind](https://github.com/timonweb/django-tailwind) installed
  and configured
- [whitenoise](http://whitenoise.evans.io/) installed and configured (django
  will serve static files in production
- secret key is taken from the environment variable "`DJANGO_SECRET`"
- config for connecting to a postgres database, which docker-compose will
  facilitate for development
- settings are nested into their own directory, to allow for various settings
- a requirements.txt file

## Surrounding Django

- Dockerfile and docker-compose config. **The docker-compose config is designed
  for DEVELOPMENT PURPOSES ONLY.**
- Makefile for testing, pushing containers, and deploying. This makes creating
  CI/CD pipelines trivial.

# Setup

1. In the Makefile, update the `CONTAINER_NAME`, as well as `DOCKER_ACCOUNT` if
   you are not me :)
2. Rename the `django_` folder to something appropriate for your project,
3. Peruse and update update `django_/settings/base.py`. In particular, Django
   will blow up after renaming the `django_` folder until things like
   `ROOT_URLCONF` and `WSGI_APPLICATION` are be updated.
4. Update the entrypoint scripts, which reference the wsgi module.
