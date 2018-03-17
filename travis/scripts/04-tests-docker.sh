#!/bin/bash
set -e

#-------------------------------------------------------------------------------
# Test Docker image
#-------------------------------------------------------------------------------
docker container run -d --name jhipster jhipster/jhipster:master
docker container ps
docker container exec -it jhipster yarn --version
docker container exec -it jhipster yo --version
docker container exec -it jhipster bower --version
docker container exec -it jhipster gulp --version
docker container exec -it jhipster jhipster --help --no-insight
docker container exec -it jhipster jhipster info --no-insight
docker container exec -it jhipster curl https://raw.githubusercontent.com/jhipster/generator-jhipster/master/travis/samples/ngx-default/.yo-rc.json -o toto.txt
docker container exec -it jhipster ls -al
docker container exec -it jhipster jhipster --force --no-insight --skip-checks --with-entities
docker container exec -it jhipster ./mvnw test
docker container exec -it jhipster yarn test
