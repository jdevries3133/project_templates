"""These settings don't get used right now, but this is an example of how you
can add other modules in this folder to extend and override parts of the base
settings. I think that this is much cleaner than base settings having a bunch
of branches based on different things like whether debug is true, etc.

You could activate these settings by setting the DJANGO_SETTINGS_MODULE
environment variable to <project_name>.settings.development.
"""

from .base import *


DEBUG = True
