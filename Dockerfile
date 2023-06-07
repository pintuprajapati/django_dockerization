# base image
FROM python:3.8

# setup environment variable (we can give any name)
ENV DOCKERHOME=/app

# set the working directory
RUN mkdir -p $DOCKERHOME

# Where the code lives
WORKDIR $DOCKERHOME

# copy whole project to your home directory
# 1st param is "working (app) dir" and 2nd param is "our whole project dir"
# so we are copying "our whole project dir" and pasting it into "working (app) dir"
COPY . .

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# run this command to install all dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# start server
CMD ["python3", "manage.py", "runserver"]