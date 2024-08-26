# Testing a Site with Docker

This document provides instructions on how to test a static HTML site using Docker on your local machine.

## Prerequisites

Before you start, make sure you have the following software installed:

- [Docker](https://www.docker.com/products/docker-desktop/)

## Steps to Test a Site with Docker

1.  Create a Dockerfile

In the root of your project directory, create a file named `Dockerfile` with the following content:

```bash
# Use an Nginx image to serve static files

FROM nginx:alpine

# Copy the HTML file into the Nginx directory

COPY ./website-sample/index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server

EXPOSE 80
```

2.  Build the Docker Image

Open a terminal or command prompt in the directory containing your Dockerfile and run the following command to build the Docker image:

```bash
docker build -t my-html-app .
```

This command builds a Docker image named my-html-app based on the instructions in the `Dockerfile`.

3. Run the Docker Container
   Start a container from the image you just built using the following command:

```bash
docker run -d -p 8080:80 my-html-app
```

This command runs the container in detached mode and maps port 80 in the container to port 8080 on your local machine.

4. Access the Site in Your Browser

Open your web browser and navigate to http://localhost:8080. You should see your static HTML page served by the Nginx server.

5. Stop and Remove the Docker Container

To stop and remove the running container, use the following commands:

```bash
docker ps # To find the container ID
docker stop <container_id>
docker rm <container_id>
```

Replace `<container_id>` with the ID of the container you want to stop and remove. You can find the container ID by running `docker ps`.
