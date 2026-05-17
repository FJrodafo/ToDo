# ToDo

[![GitHub Pages](https://img.shields.io/badge/%20-FFFFFF?style=social&logo=githubpages&logoColor=000000&logoSize=auto)](https://fjrodafo.github.io/ToDo/)
[![GitHub Stars](https://img.shields.io/github/stars/FJrodafo/ToDo?style=social&logo=github&logoColor=000000&label=Stars&labelColor=FFFFFF&color=FFFFFF)](https://github.com/FJrodafo/ToDo/stargazers)

[![Docker Container](https://img.shields.io/badge/ToDo-2560FF?style=flat&logo=docker&logoColor=FFFFFF)](https://github.com/FJrodafo/ToDo/pkgs/container/to-do)
[![Docker Pulls](https://img.shields.io/docker/pulls/fjrodafo/to-do?style=flat&logo=docker&logoColor=FFFFFF&label=Pulls&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/to-do)
[![Docker Image Size](https://img.shields.io/docker/image-size/fjrodafo/to-do?style=flat&logo=docker&logoColor=FFFFFF&label=Size&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/to-do)

## Index

1. [Introduction](#introduction)
2. [Clone the repository](#clone-the-repository)
3. [Using Docker](#using-docker)
4. [Credits](#credits)

## Introduction

Fast and minimalist to-do app!

This project has been developed on a [Linux](https://github.com/torvalds/linux) system. To learn more about the system, visit the [Dotfiles](https://github.com/FJrodafo/Dotfiles) repository.

## Clone the repository

Open a terminal in the directory where you store your repositories and clone it with the following command:

```shell
# HTTPS
git clone https://github.com/FJrodafo/ToDo.git
cd ToDo/
```

```shell
# SSH
git clone git@github.com:FJrodafo/ToDo.git
cd ToDo/
```

## Using Docker

You can find a Docker image of this project ready to be pulled on [GitHub Packages](https://github.com/FJrodafo/ToDo/pkgs/container/to-do) or [Docker Hub](https://hub.docker.com/r/fjrodafo/to-do) official website!

Pull the latest image with the following commands:

```shell
# GitHub Packages
docker pull ghcr.io/fjrodafo/to-do:latest
```

```shell
# Docker Hub
docker pull fjrodafo/to-do:latest
```

### Run with Docker Compose (Recommended)

Make sure you have created a Docker volume named `to-do` with the following command:

```shell
docker volume create to-do
```

Build the container:

```shell
docker compose build
```

> [!NOTE]
> 
> If you want to build the image locally, uncomment the `build` section in `docker-compose.yaml` and run `docker compose build`. Otherwise, skip directly to the next step.

Run the container:

```shell
docker compose up -d
```

Check the container logs:

```shell
docker logs -f to-do
```

Stop the Container:

```shell
docker compose down
```

Open [http://localhost:3000](http://localhost:3000) in your favorite browser to see the result.

> [!IMPORTANT]
> 
> If you already have applications that use port 3000, you will need to change the host port before creating the Docker container so that it can run correctly on a free port.

### Build Docker image manually

If you prefer not to use Docker Compose, you can build and run the image manually.

If you don't have Node v24.x or higher installed on your machine, you can build a Docker image by running the [Dockerfile](https://github.com/FJrodafo/ToDo/blob/main/Dockerfile).

Create a volume by executing the following command:

```shell
docker volume create to-do
```

Open a terminal and run the following command:

```shell
docker build -t to-do:latest .
```

After the build completes, you can run your container with the following command:

```shell
docker run -dp 127.0.0.1:3000:3000 --mount type=volume,src=to-do,target=/etc/todo to-do
```

Check the container logs:

```shell
docker ps -a
docker logs -f <container_id>
```

Stop and remove the Container:

```shell
docker stop <container_id>
docker rm <container_id>
```

## Credits

Forked from [docker/getting-started](https://github.com/docker/getting-started) with Apache-2.0 license.
