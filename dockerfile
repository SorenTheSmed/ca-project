# Dockerfile for docker-flask web application

# Add a base image to build this image off of
FROM ubuntu:latest

#install python and pip
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential


# Add a default port containers from this image should expose
EXPOSE 

# Add a default command for this image
CMD 