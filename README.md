# Usage Guide

## Running Makefiles
To use the Makefile commands follow the structure below
```bash
    make <insert command here> -f <select makefile here e.g Makefile.docker>
```
Apply the logic below for the commands in both makefiles.

## Startup

- Start the container
- Run the container
- Now you can write, compile and test your code
- You're done? Stop the container
- You are done and will like to free up memory? Delete the container
Check the commands below for the appropriate command

## Starting the Container
To start the container in the background/detached, use the following command:

```bash
    make all -f Makefile.docker
```

## Running the Application

To run the application within a specific service, execute the following command:

```bash
    make run -f Makefile.docker
```

## Rebuilding with Local Changes

If you've made local changes and need to rebuild, use the following command:

```bash
    make build -f Makefile.docker
```

## Stopping the container

You are done with your task and would like to take down the container
```bash
    make down -f Makefile.docker
```

# Deleting all dangling containers
Removes all stopped containers, unused networks, and dangling images on your Docker system. This command is useful for cleaning up your Docker environment by removing unnecessary and unused resources, helping to free up disk space and streamline your Docker setup. However, use it with caution, as it will delete containers and images that are not actively in use.
```bash
    make clean -f Makefile.docker
```
# Deleting all dangling and active containers

it stops all running containers, removes unused networks, dangling images, and volumes from your Docker system. It's a comprehensive cleanup operation that can help free up disk space and streamline your Docker environment. Be cautious when using scripts like this, especially in a production environment, as it will delete resources that are not actively in use.

```bash
    make fclean -f Makefile.docker
```




