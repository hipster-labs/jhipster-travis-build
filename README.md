# jhipster-travis-build

## Travis Builds

Additionnal builds for generator-jhipster repository

| Type          | Status                                                   | Description                    |
|:--------------|:---------------------------------------------------------|:-------------------------------|
| docker        | [![Build Status][image-docker]][travis-url]              | Build for testing Docker image |
| ngx-maven     | [![Build Status][image-ngx-maven]][travis-url]           | Builds for ngx Maven           |
| ngx-gradle    | [![Build Status][image-ngx-gradle]][travis-url]          | Builds for ngx Gradle          |
| microservices | [![Build Status][image-microservices]][travis-url]       | Builds for Microservices       |
| react         | [![Build Status][image-react]][travis-url]               | Builds for React               |

## Analysis of the sample JHipster project

[![sonar-quality-gate][sonar-quality-gate]][sonar-url]
[![sonar-coverage][sonar-coverage]][sonar-url]
[![sonar-bugs][sonar-bugs]][sonar-url]
[![sonar-vulnerabilities][sonar-vulnerabilities]][sonar-url]

[travis-url]: https://travis-ci.org/hipster-labs/jhipster-travis-build/branches
[image-docker]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=docker
[image-ngx-maven]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=ngx-maven
[image-ngx-gradle]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=ngx-gradle
[image-microservices]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=microservices
[image-react]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=react

[sonar-url]: https://sonarqube.com/dashboard?id=io.github.jhipster.sample%3Ajhipster-sample-application
[sonar-quality-gate]: https://sonarqube.com/api/badges/gate?key=io.github.jhipster.sample%3Ajhipster-sample-application
[sonar-coverage]: https://sonarqube.com/api/badges/measure?key=io.github.jhipster.sample%3Ajhipster-sample-application&metric=coverage
[sonar-bugs]: https://sonarqube.com/api/badges/measure?key=io.github.jhipster.sample%3Ajhipster-sample-application&metric=bugs
[sonar-vulnerabilities]: https://sonarqube.com/api/badges/measure?key=io.github.jhipster.sample%3Ajhipster-sample-application&metric=vulnerabilities
