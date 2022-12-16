#! /bin/bash

for i in db01 dcm01 rp01
do
    docker run -d -t --name pacs-${i} --hostname pacs-${i} ubuntu
done

echo "don't forget to add python3-minimal package"
