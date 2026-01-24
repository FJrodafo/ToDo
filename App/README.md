# to-do

Fast and minimalist to-do app!

## Index

1. [Attribution](#attribution)
2. [Project Structure](#project-structure)
3. [Download the code](#download-the-code)
4. [Using Docker](#using-docker)
    1. [Run with Docker Compose](#run-with-docker-compose)
    2. [Build Docker image on your own](#build-docker-image-on-your-own)
    3. [Pull the image from Docker Hub/GitHub Packages](#pull-the-image-from-docker-hubgithub-packages)
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
git clone https://github.com/FJrodafo/to-do.git
```

## Using Docker

### Run with Docker Compose

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

### Build Docker image on your own

If you don't have Node v18 or higher installed on your machine, you can build a Docker image by running the [Dockerfile](./Dockerfile).

Open a terminal and run the following command (Make sure you are in the `App` directory):

```shell
docker build -t to-do .
```

Create a volume by using the `docker volume create` command:

```shell
docker volume create to-do
```

After the build completes, you can run your container with the following command:

```shell
docker run -dp 127.0.0.1:3000:3000 --mount type=volume,src=to-do,target=/etc/todos to-do
```

> [!NOTE]
> 
> After a few seconds, open your web browser to http://localhost:3000

### Pull the image from Docker Hub/GitHub Packages

There is a repository of this same project published in [Docker Hub](https://hub.docker.com/r/fjrodafo/to-do).

In addition to Docker Hub, this application is available in [GitHub Packages](https://github.com/FJrodafo/to-do/pkgs/container/to-do).

```shell
# Docker Hub
docker pull fjrodafo/to-do:v1.0.0

# GitHub Packages
docker pull ghcr.io/fjrodafo/to-do:v1.0.0
```

Pull the latest version with the following command:

```shell
docker pull fjrodafo/to-do:latest
```

## Resources

To see a more detailed explanation of how this Docker project works, visit the following repository on GitHub:

https://github.com/FJrodafo/University/blob/main/Cheat_sheets/Docker/README.md#overview-of-the-get-started-guide