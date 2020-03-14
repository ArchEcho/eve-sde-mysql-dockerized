# EVE Online SDE on Dockerized Mysql
Based on fuzzwork dump and official mysql docker image.
# Usage
<https://hub.docker.com/_/mysql/>
# ROOT PASSWORD
By default, a random password will be generated.
```
MYSQL_RANDOM_ROOT_PASSWORD
This is an optional variable. Set to yes to generate a random initial password for the root user (using pwgen). 
The generated root password will be printed to stdout (GENERATED ROOT PASSWORD: .....).
```
To use your own password, uncomment [```MYSQL_ROOT_PASSWORD```](https://github.com/ArchEcho/eve-sde-mysql-dockerized/blob/master/Dockerfile#L10) in Dockerfile.
