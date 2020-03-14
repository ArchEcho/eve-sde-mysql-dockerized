FROM mysql

LABEL maintainer="admin@omniarch.io"

# Database name.
ENV MYSQL_DATABASE=eve_sde
# Generating random password. Comment this if your are going to use your own password.
ENV MYSQL_RANDOM_ROOT_PASSWORD=yes
# Use your own password. Also comment MYSQL_RANDOM_ROOT_PASSWORD if you use this option.
# ENV MYSQL_ROOT_PASSWORD=yourpasswordhere

# Fetching compressed db dump.
ADD https://www.fuzzwork.co.uk/dump/mysql-latest.tar.bz2 /docker-entrypoint-initdb.d

# Decompress db dump into /docker-entrypoint-initdb.d as mysql image automatic load dump from here.
RUN apt-get update && apt-get install -y --no-install-recommends wget bzip2 && rm -rf /var/lib/apt/lists/* && \
    tar -xjvf /docker-entrypoint-initdb.d/mysql-latest.tar.bz2 -C /docker-entrypoint-initdb.d --strip-components 1 && \
    rm /docker-entrypoint-initdb.d/mysql-latest.tar.bz2 && \
    apt-get purge -y --auto-remove wget bzip2