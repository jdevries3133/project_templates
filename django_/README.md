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

- GitHub actions for:
  - code formatting checks via [black](https://github.com/psf/black)
  - automated testing
  - automated deployment to a Kubernetes cluster
- Dockerfile and docker-compose config. **The docker-compose config is designed
  for DEVELOPMENT PURPOSES ONLY.**

# Setup

1. In the Makefile, update the `CONTAINER_NAME`, as well as `DOCKER_ACCOUNT` if
   you are not me :)
2. Rename the `django_` folder to something appropriate for your project, and
   update various strings in `django_/settings/base.py` until Django no longer
   blows up. Things like `ROOT_URLCONF` and `WSGI_APPLICATION` must be updated.
