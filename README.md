# EVE Online SDE on Dockerized Mysql
Based on fuzzwork dump and official mysql docker image.
# Usage
## Basic Usage
Build Dockerfile and run.
## Deploy as stack
To run the example stack: Run ```docker stack deploy -c stack.yml mysql``` (or ```docker-compose -f stack.yml up```), wait for it to initialize completely, and visit http://swarm-ip:8080, http://localhost:8080, or http://host-ip:8080 (as appropriate).
## Detail Usage
<https://hub.docker.com/_/mysql/>
# ROOT PASSWORD
By default, a placeholder password will be used. Change for production env.
You can also use a random password generator.
```
MYSQL_RANDOM_ROOT_PASSWORD
This is an optional variable. Set to yes to generate a random initial password for the root user (using pwgen). 
The generated root password will be printed to stdout (GENERATED ROOT PASSWORD: .....).
```
To use random password, comment [```MYSQL_ROOT_PASSWORD```](https://github.com/ArchEcho/eve-sde-mysql-dockerized/blob/master/Dockerfile#L10) in Dockerfile. And uncomment [```ENV MYSQL_RANDOM_ROOT_PASSWORD=yes```](https://github.com/ArchEcho/eve-sde-mysql-dockerized/blob/master/Dockerfile#L8).
