# Django Docker Template
This is a template ready to start your new project with django, using docker to create the environment quickly. This app is already configured to run the tests, check the pep8 and coverage using TravisCi. For web server Nginx + Gunicorn.

## Content of this template.
- Django 1.11.4
- Python 3.6.2
- nginx 1.13.3
- gunicorn 19.7.1
- Mysql 5.7.19
- PhpMyAdmin 4.7.3


### Install Docker and Docker-Compose
If you have not installed you can follow this [How To](etc/install_docker_docker-compose.md)

### Cloning this repository
```
git clone https://github.com/glaubervila/django_docker_template.git <project_name>
```
### Change Git repository
```
cd <project_name>
rm -rf .git
git init
git add --all
git commit -m "initial commit"
```
If using github, add the url from the remote repository.
```
git remote add origin https://github.com/<user>/<repository>.git
git push -u origin master
```

### Up Containers

Create an .env file with the variables, and edit the file to change the project name and default ports values if needed.
```
# cat env_template >> .env
```

Build and run app with Compose
```
# sudo docker-compose build
# sudo docker-compose up
```

Tip:
you want to run your services in the background, you can pass the -d flag (for “detached” mode) to docker-compose up and use docker-compose ps to see what is currently running:
```
# sudo docker-compose up -d
```

### Test in brownser
Access localhost:port (port is declared in .env file) by default in 80. 


### Create superuser in Django
```
sudo docker-compose run --rm web python manage.py createsuperuser
```

### Enable Travis and Coveralls
