#!/usr/bin/env bash

docker node update --label-add mongo.role=data1 server1
docker node update --label-add mongo.role=cfg1 server1

docker node update --label-add mongo.role=cfg2 server-jj95enl
docker node update --label-add mongo.role=data2 server-jj95enl
docker node update --label-add mongo.role=mongos1 server-jj95enl

docker node update --label-add mongo.role=cfg3 tp01-2066
docker node update --label-add mongo.role=data3 tp01-2066
docker node update --label-add mongo.role=mongos2 tp01-2066

docker network create --attachable -d overlay mongo
docker network create --attachable -d overlay mongos

#docker stack deploy -c swarm-compose.yml mongo
