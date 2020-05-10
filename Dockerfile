FROM mongo:4-bionic

COPY mongo-init.sh /docker-entrypoint-initdb.d/
COPY dog/*.json /docker-entrypoint-initdb.d/dog/

RUN chmod +x /docker-entrypoint-initdb.d/mongo-init.sh