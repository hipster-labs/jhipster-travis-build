#!/bin/bash
set -e

#-------------------------------------------------------------------------------
# Test Docker image
#-------------------------------------------------------------------------------
docker container run -d --name jhipster jhipster/jhipster:master
docker container ps
docker container exec jhipster yarn --version
docker container exec jhipster yo --version
docker container exec jhipster bower --version
docker container exec jhipster gulp --version
docker container exec jhipster jhipster --help --no-insight
docker container exec jhipster jhipster info --no-insight
docker container cp "$JHIPSTER_SAMPLES"/"$JHIPSTER"/.yo-rc.json jhipster:/home/jhipster/app/
docker container exec jhipster ls -al
docker container exec jhipster jhipster --force --no-insight --skip-checks --with-entities
docker container exec jhipster ./mvnw test
docker container exec jhipster yarn test
