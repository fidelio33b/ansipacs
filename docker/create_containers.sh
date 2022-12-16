#! /bin/bash

for i in db01 dcm01 rp01
do
    CONTAINER_NAME=pacs-${i}
    docker run -d -t --name ${CONTAINER_NAME} --hostname ${CONTAINER_NAME} ubuntu
    sleep 1
    docker exec -i ${CONTAINER_NAME} apt update
    docker exec -i ${CONTAINER_NAME} apt -y upgrade
    docker exec -i ${CONTAINER_NAME} apt -y install python3-minimal
done

echo "done"
