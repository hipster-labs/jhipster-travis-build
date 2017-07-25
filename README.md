# jhipster-travis-build

## Travis Builds

Additionnal builds for generator-jhipster repository

| Type          | Status                                                   | Description                    |
|:--------------|:---------------------------------------------------------|:-------------------------------|
| Docker        | [![Build Status][travis-image-docker]][travis-url]       | Build for testing Docker image |
| ng1-maven     | [![Build Status][travis-image-ng1]][travis-url]          | Builds for ng1 Maven           |
| ngx-maven     | [![Build Status][travis-image-ngx]][travis-url]          | Builds for ngx maven           |
| ngx-gradle    | [![Build Status][travis-image-gradle]][travis-url]       | Builds for ngx gradle          |
| Microservices | [![Build Status][travis-image-microservices]][travis-url]| Builds for Microservices       |
| NPM 8         | [![Build Status][travis-image-npm8]][travis-url]         | Builds for NPM 8               |
| React         | [![Build Status][travis-image-react]][travis-url]        | Builds for React               |

## Analysis of the sample JHipster project

[![sonar-quality-gate][sonar-quality-gate]][sonar-url]
[![sonar-coverage][sonar-coverage]][sonar-url]
[![sonar-bugs][sonar-bugs]][sonar-url]
[![sonar-vulnerabilities][sonar-vulnerabilities]][sonar-url]

[travis-url]: https://travis-ci.org/hipster-labs/jhipster-travis-build/branches
[travis-image-docker]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=docker
[travis-image-ng1]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=ng1
[travis-image-ngx]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=ngx
[travis-image-gradle]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=gradle
[travis-image-microservices]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=microservices
[travis-image-npm8]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=npm8
[travis-image-react]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=react

[sonar-url]: https://sonarqube.com/dashboard?id=io.github.jhipster.sample%3Ajhipster-sample-application
[sonar-quality-gate]: https://sonarqube.com/api/badges/gate?key=io.github.jhipster.sample%3Ajhipster-sample-application
[sonar-coverage]: https://sonarqube.com/api/badges/measure?key=io.github.jhipster.sample%3Ajhipster-sample-application&metric=coverage
[sonar-bugs]: https://sonarqube.com/api/badges/measure?key=io.github.jhipster.sample%3Ajhipster-sample-application&metric=bugs
[sonar-vulnerabilities]: https://sonarqube.com/api/badges/measure?key=io.github.jhipster.sample%3Ajhipster-sample-application&metric=vulnerabilities
