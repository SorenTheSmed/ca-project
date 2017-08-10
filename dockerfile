# Dockerfile for docker-flask web application

# Add a base image to build this image off of
FROM ubuntu:latest

#install python and pip
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential


#copy directory into docker
COPY * /usr/src/app/
COPY app/* /usr/src/app/app/ 
COPY db_repository/* /usr/src/app/db_repository/

#install python requirements
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt


# Add a default port containers from this image should expose
EXPOSE 5000

# Default command for this image
CMD python /usr/src/app/run.py 