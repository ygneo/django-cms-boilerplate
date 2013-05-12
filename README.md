django-cms-boiler-plate
=======================

Yet another django boiler plate, specialized for django cms [1] projects.

Initial setup
-------------

1. Clone this repository

  git clone https://github.com/ygneo/django-cms-boilerplate.git <your-project-name>


1. Edit settings.py
   1. Set the languages you want to have avaliable, and the default one:
     LANGUAGES = [('es', 'en')]
     DEFAULT_LANGUAGE = 0

   1. By default, sqlite3 db backend is used. You can change DATABASES setting to fit your needs.

Batteries included
------------------


Fabric taks
-----------


[1] https://www.django-cms.org/en/
