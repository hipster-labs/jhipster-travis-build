#!/bin/bash
set -e

#-------------------------------------------------------------------------------
# Test Docker image
#-------------------------------------------------------------------------------
docker run --rm -it jhipster/jhipster:master yarn --version
docker run --rm -it jhipster/jhipster:master yo --version
docker run --rm -it jhipster/jhipster:master bower --version
docker run --rm -it jhipster/jhipster:master gulp --version
docker run --rm -it jhipster/jhipster:master jhipster --help --no-insight
docker run --rm -it jhipster/jhipster:master jhipster info --no-insight

#-------------------------------------------------------------------------------
# Generate the project with Docker image
#-------------------------------------------------------------------------------
mkdir -p "$APP_FOLDER"
cp -f "$JHIPSTER_SAMPLES"/"$JHIPSTER"/.yo-rc.json "$APP_FOLDER"/
cd "$APP_FOLDER"
ls -al $HOME
ls -al $APP_FOLDER

docker run --rm -it -v "$APP_FOLDER":/home/jhipster/app/ jhipster/jhipster:master ls -al
docker run --rm -it -v "$APP_FOLDER":/home/jhipster/app/ \
    jhipster/jhipster:master jhipster --force --no-insight --skip-checks --with-entities
ls -al "$APP_FOLDER"

docker run --rm -it -v "$APP_FOLDER":/home/jhipster/app ./mvnw test
docker run --rm -it -v "$APP_FOLDER":/home/jhipster/app yarn test
