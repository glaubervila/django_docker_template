# Install Docker, Docker Compose on Linux Mint 18/18.1
====================================================

## Install Docker Engine

[Reference](http://linuxbsdos.com/2016/12/13/how-to-install-docker-and-run-docker-containers-on-linux-mint-1818-1/)


### Enable Official Docker Repository on Linux Mint 18/18.1

Import the GPG Key
```
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \
      --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
```

Point the packege manager to the official Docker repository
```
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
```

Update package database
```
sudo apt update
```

### Install Docker Prerequisites on Linux Mint 18/18.1
use the following command to install a few required packages:
```
sudo apt install linux-image-generic linux-image-extra-virtual
sudo reboot
```

### Install Docker on Linux Mint 18/18.1
```
sudo apt install docker-engine
```

### Test instalation
```
sudo docker run hello-world
```

## Install Docker Compose
[Official Documentation](https://docs.docker.com/compose/install/#install-compose-on-mac-or-windows-systems)

download Docker Compose Version used: 1.15.0 Last version on this date.
```
$ sudo -i
# curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# exit
```
Apply executable permissions to the binary:
```
sudo chmod +x /usr/local/bin/docker-compose
```

Installing Command Completion
```
sudo curl -L https://raw.githubusercontent.com/docker/compose/master/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
```

Test the installation.
```
$ sudo docker-compose --version
```
