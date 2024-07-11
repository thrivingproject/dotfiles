#!/bin/bash

# Require a project name
if [ -z "$1" ]; then
    echo "Please provide a project name"
    return 1
fi

# Create a new Django project and app
mkdir $1 && cd $1
python3 -m venv .venv && source .venv/bin/activate
pip3 install django docutils
pip3 freeze > requirements.txt
django-admin startproject $1 .
python3 manage.py startapp $1app

# forms.py
touch $1app/forms.py
echo "from django import forms
" > $1app/forms.py

# statid
mkdir $1app/static/$1app
touch $1app/static/$1app/style.css

# urls.py
touch $1app/urls.py
echo "from django.urls import path

from . import views

app_name = '$1app'

urlpatterns = []
" > $1app/urls.py

# Templates
mkdir $1app/templates
mkdir $1app/templates/$1app
touch $1app/templates/template.html
echo "<!DOCTYPE html>
{% load static %}
<html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\" />
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
    <link rel=\"stylesheet\" href=\"https://unpkg.com/mvp.css\">
    <link rel=\"stylesheet\" href=\"{% static '$1app/style.css' %}\">
    <title>{% block title %}{% endblock %}</title>
  </head>
  <body>
    <header></header>
    <main>{% block main %}{% endblock main %}</main>
    <footer></footer>
  </body>
</html>
" > $1app/templates/template.html

# README.md
touch README.md
echo "# How this was made

\`\`\`bash
# Require a project name
if [ -z \"\$1\" ]; then
    echo \"Please provide a project name\"
    return 1
fi

# Create a new Django project and app
mkdir \$1 && cd \$1
python3 -m venv .venv && source .venv/bin/activate
pip3 install django docutils
pip3 freeze > requirements.txt
django-admin startproject \$1 .
python3 manage.py startapp \$1app

# forms.py
touch \$1app/forms.py
echo \"from django import forms\" > \$1app/forms.py

# urls.py
touch \$1app/urls.py
echo \"from django.urls import path

from . import views

app_name = '\$1app'

urlpatterns = []\" > \$1app/urls.py

# Templates
mkdir \$1app/templates
mkdir \$1app/templates/\$1app
touch \$1app/templates/template.html
echo \"<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='UTF-8' />
    <meta name='viewport' content='width=device-width, initial-scale=1.0' />
    <title>{% block title %}{% endblock %}</title>
  </head>
  <body>
    <header></header>
    <main>{% block main %}{% endblock main %}</main>
    <footer></footer>
  </body>
</html>\" > \$1app/templates/template.html

# Migrate, create superuser
py manage.py migrate
py manage.py createsuperuser
\`\`\`

## Next steps

1. Add \`$1app\` and \`django.contrib.admindocs\` to the \`INSTALLED_APPS\` list in [$1/settings.py]($1/settings.py)
2. Add \`path('admin/doc/', include('django.contrib.admindocs.urls'))\` to URLPATTERNS in [$1/urls.py]($1/urls.py). Make sure it’s included before the \`'admin/'\` entry, so that requests to \`/admin/doc/\` don’t get handled by the latter entry.
3. Add path for \`$1app\` URLs to [$1/urls.py]($1/urls.py)" > README.md
4. Register the app in the project settings.py file
5. Regist models in the app admin.py file

# Migrate, create superuser, and open in VS Code
python3 manage.py migrate
python3 manage.py createsuperuser
code .