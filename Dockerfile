FROM mongo:4-bionic

RUN apt-get update || true && apt-get install -y dos2unix

COPY mongo-init.sh /docker-entrypoint-initdb.d/
COPY dog/*.json /docker-entrypoint-initdb.d/dog/

RUN dos2unix /docker-entrypoint-initdb.d/mongo-init.sh

RUN chmod +x /docker-entrypoint-initdb.d/mongo-init.sh