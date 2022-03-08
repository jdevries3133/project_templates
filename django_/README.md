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
