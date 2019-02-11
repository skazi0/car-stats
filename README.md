## Basic Flask App Template (with login)
# usage
- git clone https://github.com/skazi0/flask-skeleton.git
- virtualenv venv
- . venv/bin/activate
- pip install -r requirements.txt
- export APP_CONFIG=$(readlink -f app.cfg)
# generate migrations structures
- python manage.py db init
# run dev server
- python manage.py runserver
