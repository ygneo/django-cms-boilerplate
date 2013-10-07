# Django settings for jellyrisk project.
import os

DEBUG = True

# Configure your local DB here
#
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
#         'NAME': '',                      # Or path to database file if using sqlite3.
#         'USER': '',                      # Not used with sqlite3.
#         'PASSWORD': '',                  # Not used with sqlite3.
#         'HOST': '',                      # Set to empty string for localhost. Not used with sqlite3.
#         'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
#   'OPTIONS': {
#       "init_command": "SET storage_engine=INNODB",
#   }
#     }
# }


STATIC_ROOT = ''
STATICFILES_DIRS = (os.path.join(os.path.abspath(os.path.dirname(__file__)), 'static/'),)

MEDIA_ROOT = 'media/'
