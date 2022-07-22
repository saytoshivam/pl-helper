#! /bin/bash

echo "Stopping Consul,helper,metadata-service,metrics-processor"
docker stop consul helper metadata-service metrics-processor

echo "Removing Consul"
docker container rm consul

echo "Restarting Zookeeper and Kafka"
docker start zookeeper
sleep 5
docker start kafka

echo "Recreating Consul"
docker-compose -f /Users/shivamjaiswal/docker/my_santaba/docker-compose.yml up -d --no-deps --build consul

echo "Starting Consul"
docker restart consul 

echo "Starting Helper"
docker start helper

echo "Starting other components "
docker start metadata-service metrics-processor

