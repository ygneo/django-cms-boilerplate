django-cms-boiler-plate
=======================

Yet another django boiler plate, specialized for django cms [1] projects.

Initial setup
-------------

1. Clone this repository

        git clone https://github.com/ygneo/django-cms-boilerplate.git <your-project-name>


1. Edit settings.py
   1. Set the languages you want to have avaliable, and the default one, in LANGUAGES and DEFAULT_LANUAGE settings.
   1. By default, sqlite3 db backend is used. You can change DATABASES setting to fit your needs.
   1. Set your TIME_ZONE and your LANGUAGE_CODE.
   1. If you're not going to use i18n and/or l10n, you can set USE_I8N and/ot USER_L10N to false.
   1. Set your media root absolute path, where the user-uploaded files will be saved.
   1. By default, STATIC_ROOT is set to 'static/' directory, relative to settings.py path. Change it if you need it.
   1. Change SECRET_KEY to something unique, like you. ;-)
   1. Django CMS's templates will be loaded by default from 'templates/' directory, relative to settings.py path. Change TEMPLATES if you want something different.
   1. Only one sample CMS template is set in CMS_TEMPLATES setting. Add yours.
   1. Three sample django cms placeholders are configured. Feel free to change them.


Batteries included
------------------

 - Django CMS with default cms plugins and requirements (of

Fabric taks
-----------


[1] https://www.django-cms.org/en/
