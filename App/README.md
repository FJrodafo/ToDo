# ToDo

Fast and minimalist to-do app!

[![GitHub Stars](https://img.shields.io/github/stars/FJrodafo/ToDo?style=social&logo=github&logoColor=000000&label=Stars&labelColor=ffffff&color=ffffff)](https://github.com/FJrodafo/ToDo/stargazers)

[![Docker Pulls](https://img.shields.io/docker/pulls/fjrodafo/to-do?style=flat&logo=docker&logoColor=ffffff&label=Pulls&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/to-do)
[![Image Size](https://img.shields.io/docker/image-size/fjrodafo/to-do?style=flat&logo=docker&logoColor=ffffff&label=Size&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/to-do)

## Index

1. [Attribution](#attribution)
2. [Project Structure](#project-structure)
3. [Download the code](#download-the-code)
4. [Using Docker](#using-docker)
    1. [Run with Docker Compose (Recommended)](#run-with-docker-compose-recommended)
    2. [Build Docker image manually](#build-docker-image-manually)
5. [Resources](#resources)

## Attribution

Forked from [docker/getting-started](https://github.com/docker/getting-started) with Apache-2.0 license

This repository is a sample application for users following the getting started guide at https://docs.docker.com/get-started/

## Project Structure

<details>
<summary>Click me</summary>

```
App/
├── spec/
│   ├── persistence/
│   │   └── sqlite.spec.js
│   └── routes/
│       ├── addItem.spec.js
│       ├── deleteItem.spec.js
│       ├── getItems.spec.js
│       └── updateItem.spec.js
├── src/
│   ├── persistence/
│   │   ├── index.js
│   │   ├── mysql.js
│   │   └── sqlite.js
│   ├── routes/
│   │   ├── addItem.js
│   │   ├── deleteItem.js
│   │   ├── getItems.js
│   │   └── updateItem.js
│   ├── static/
│   │   ├── css/
│   │   │   ├── font-awesome/
│   │   │   │   ├── all.min.css
│   │   │   │   ├── *.eot
│   │   │   │   ├── *.svg#fontawesome
│   │   │   │   ├── *.ttf
│   │   │   │   ├── *.woff
│   │   │   │   └── *.woff2
│   │   │   ├── bootstrap.min.css
│   │   │   └── styles.css
│   │   ├── js/
│   │   │   ├── app.js
│   │   │   ├── babel.min.js
│   │   │   ├── react-bootstrap.js
│   │   │   ├── react-dom.production.min.js
│   │   │   └── react.production.min.js
│   │   └── index.html
│   └── index.js
├── docker-compose.yaml
├── Dockerfile
├── package.json
└── yarn.lock
```
</details>

## Download the code

Open your directory where you save your repositories and clone it with the following command:

```shell
# From GitHub
git clone https://github.com/FJrodafo/ToDo.git
```

## Using Docker

This project can be run using Docker without installing Node.js locally.

You can find a Docker image of this project ready to be pulled on [GitHub Packages](https://github.com/FJrodafo/ToDo/pkgs/container/to-do) or [Docker Hub](https://hub.docker.com/r/fjrodafo/to-do) website!

Pull the image with the following commands:

```shell
# Docker Hub
docker pull fjrodafo/to-do:v1.0.1
```

```shell
# GitHub Packages
docker pull ghcr.io/fjrodafo/to-do:v1.0.1
```

### Run with Docker Compose (Recommended)

Make sure you have created a Docker volume named `to-do` before building the application with the following command:

```shell
docker volume create to-do
```

Build the container:

```shell
docker compose build
```

Run the container:

```shell
docker compose up -d
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

If you don't have Node v18 or higher installed on your machine, you can build a Docker image by running the [Dockerfile](https://github.com/FJrodafo/ToDo/blob/main/App/Dockerfile).

Create a volume by executing the following command:

```shell
docker volume create to-do
```

Open a terminal and run the following command (Make sure you are in the `App` directory):

```shell
docker build -t to-do .
```

After the build completes, you can run your container with the following command:

```shell
docker run -dp 3000:3000 --mount type=volume,src=to-do,target=/etc/todo to-do
```

Open [http://localhost:3000](http://localhost:3000) in your favorite browser to see the result.

> [!IMPORTANT]
> 
> If you already have applications that use port 3000, you will need to change the host port before creating the Docker container so that it can run correctly on a free port.

## Resources

To see a more detailed explanation of how this Docker project works, visit the following repository on GitHub:

https://github.com/FJrodafo/University/blob/main/Cheat_sheets/Docker/README.md#overview-of-the-get-started-guide