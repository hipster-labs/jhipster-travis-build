#!/bin/bash
set -ev

#-------------------------------------------------------------------------------
# Choose the repos
#-------------------------------------------------------------------------------
JHIPSTER_REPO=https://github.com/jhipster/generator-jhipster.git
JHIPSTER_BRANCH=master

# if the JHIPSTER_DEPENDENCIES_BRANCH value is release,
# it won't clone the project but use the release from Maven
JHIPSTER_DEPENDENCIES_REPO=https://github.com/jhipster/jhipster-dependencies.git
JHIPSTER_DEPENDENCIES_BRANCH=release

#-------------------------------------------------------------------------------
# Install jhipster-dependencies
#-------------------------------------------------------------------------------
cd $TRAVIS_BUILD_DIR
if [[ "$JHIPSTER_DEPENDENCIES_BRANCH" != "release" ]]; then
    git clone "$JHIPSTER_DEPENDENCIES_REPO" jhipster-dependencies
    cd jhipster-dependencies
    if [ "$JHIPSTER_DEPENDENCIES_BRANCH" == "latest" ]; then
        LATEST=$(git describe --abbrev=0)
        git checkout -b $LATEST $LATEST
    elif [ "$JHIPSTER_DEPENDENCIES_BRANCH" != "master" ]; then
        git checkout -b $JHIPSTER_BRANCH origin/$JHIPSTER_BRANCH
    fi
    git --no-pager log -n 10 --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

    ./mvnw clean install -Dgpg.skip=true
fi
ls -al ~/.m2/repository/io/github/jhipster/jhipster-dependencies/

#-------------------------------------------------------------------------------
# Install JHipster
#-------------------------------------------------------------------------------
cd $TRAVIS_BUILD_DIR
git clone $JHIPSTER_REPO generator-jhipster
cd generator-jhipster
if [ "$JHIPSTER_BRANCH" == "latest" ]; then
    LATEST=$(git describe --abbrev=0)
    git checkout -b $LATEST $LATEST
elif [ "$JHIPSTER_BRANCH" != "master" ]; then
    git checkout -b $JHIPSTER_BRANCH origin/$JHIPSTER_BRANCH
fi
git --no-pager log -n 10 --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

yarn install
yarn global add file:"$TRAVIS_BUILD_DIR"/generator-jhipster
