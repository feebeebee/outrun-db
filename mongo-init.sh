#!/bin/bash

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
  var admin = db.getSiblingDB('admin');
  admin.auth('$MONGO_INITDB_ROOT_USERNAME', '$MONGO_INITDB_ROOT_PASSWORD');

  db.createUser({user: '$MONGO_INITDB_APP_USERNAME', pwd: '$MONGO_INITDB_APP_PASSWORD', roles: ["dbOwner"]});
EOF

for FILE in /docker-entrypoint-initdb.d/dog/*
do
  mongoimport --db $MONGO_INITDB_DATABASE --collection dog --file $FILE --mode upsert --jsonArray
done