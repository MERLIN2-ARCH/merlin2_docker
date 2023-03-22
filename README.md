# merlin2_docker

# Rocker Installation

- Install Nvidia Docker Support

```shell
$ distribution=$(. /etc/os-release;echo $ID$VERSION_ID)    && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -    && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
$ sudo apt-get update
$ sudo apt-get install -y nvidia-docker2
$ sudo systemctl restart docker
```

- Install Rocker

```shell
$ sudo apt-get install python3-rocker
```

# Docker Build

```shell
$ docker build -t merlin2:humble .
```

# Usage

```shell
$ docker pull mgons/merlin2:humble
$ rocker --nvidia --x11 mgons/merlin2:humble
```
