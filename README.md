django-cms-boiler-plate
=======================

Yet another django boiler plate, specialized for django cms [1] projects.

Initial setup
-------------

1. Download this repository as a zip file [2] and unzip it in your project's root directory, that should be empty to avoid problems.

1. Install required PyPI packages.

        pip install -r pip-requirements.txt

1. Edit settings.py
   - Set the languages you want to have avaliable, and the default one, in LANGUAGES and DEFAULT_LANUAGE settings.
   - By default, sqlite3 db backend is used. You can change DATABASES setting to fit your needs.
   - Set your TIME_ZONE and your LANGUAGE_CODE.
   - If you're not going to use i18n and/or l10n, you can set USE_I8N and/ot USER_L10N to false.
   - Set your media root absolute path, where the user-uploaded files will be saved.
   - By default, STATIC_ROOT is set to 'static/' directory, relative to settings.py path. Change it if you need it.
   - Change SECRET_KEY to something unique, like you. ;-)
   - Django CMS's templates will be loaded by default from 'templates/' directory, relative to settings.py path. Change TEMPLATES if you want something different.
   - Only one sample CMS template is set in CMS_TEMPLATES setting. Add yours.
   - Three sample django cms placeholders are configured. Feel free to change them.
   - A default configuration for logging is made and ready to be modified in LOGGING setting.

1. Use local_settings.py.tpl as a template for your own local_settings.py file, which is git-ignored so you can have different settings per enviroment. It's recommended to configure the DATABASE connection in local_settings.py, since password won't be pushed to the repository. Start by copying the template:

        cp local_settings.py.tpl local_settings.py

1. Optionaly, you can create fab_settings.py from fab_settings.py.tpl if you want to use fabric tasks (see section below).

        cp fab_settings.py.tpl fab_settings.py

    - Configure your project so you can use the fabric tasks:
      - PROJECT_NAME: Used to generate the path to your project and your virtualenv.
      - PROJECT_HOST: Host machine serving the site.
      - PROJECT_USER: Regular user with write permissions on the project directory.
      - PROJECT_DB_NAME: Obvious one. :-)
      - SUDOER_USER: User that has sudo running permissions for reloading supervisor and nginx.

1. Create your configured database, and run manage commands to create tables and apply migrations

        ./manage.py syncdb
        ./manage.py migrate

1. Now you should be able to run the development server.

        ./manage.py runserver

Batteries included
------------------

 - Django CMS 2.4.1 and its default cms plugins and requirements.
 - Python Image Library.
 - fabric, and some pre-defined fabric tasks.
 - django-extensions, https://github.com/django-extensions/django-extensions
 . South.
 - ipython
 - MYSql python binding.

Fabric taks
-----------



Future work
-----------

- Write a management command able to bootsrap the project (among others, edit settings file and generate a pip-requirements file - i.e. choosing which DB backend to use).

[1] https://www.django-cms.org/en/
[2] https://github.com/ygneo/django-cms-boilerplate/archive/master.zip
