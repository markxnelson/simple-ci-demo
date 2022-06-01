#!/bin/bash
docker run \
    -d \
    --name my-jenkins \
    -v jenkins_home:/var/jenksins_home \
    -p 8080:8080 \
    -p 50000:50000 \
    --restart=on-failure \
    simple-ci:1