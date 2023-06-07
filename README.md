# How to run the Docker (docker-compose, image, container)
- Run this command to build, up and running the docker image: `docker-compose up --build`

## Other userful commands:
- **`docker ps`**: This command lists the currently running containers on your Docker host
- **`docker ps -a`**: This command lists all containers on your Docker host, including both running and stopped containers. 
    
- To stop container: `docker stop CONTAINER_ID`
- To remove the docker: `docker rm docker_id`
- To delete all the containers: `docker rm $(docker ps -a -q)`
- To see all the images: `docker images`
- To delete a image: `docker rmi [IMAGE_ID]`
- To delete all images at once: `docker rmi $(docker images -q)`
- To delete all images with FORCE: `docker rmi --force $(docker images -q)`

- To enter into docker shell: `docker exec -it container_id bash`

## Create superuser
- Termianal 1: run the docker image by `docker-compose up --build`
- Termianal 2: go into container: `docker exec -it container_id bash`
    - to check the directories into container, type: `ls`
        - output will be: `Dockerfile  README.md  db.sqlite3  dj_docker_drf  docker-compose.yml  manage.py  requirements.txt  sample`
    - create superuser: `python3 manage.py createsuperuser`
- After every change in any file, you have to build a new docker-compose
