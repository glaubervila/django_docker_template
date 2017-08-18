# ProjectXServer

### Install Docker and Docker-Compose

[How To](etc/install_docker_docker-compose.md)

### Up Containers

To create an .env file with the variables, and edit the file to change the default values if needed.
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

