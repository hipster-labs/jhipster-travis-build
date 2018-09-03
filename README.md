# jhipster-travis-build

## Travis Builds

Additionnal builds for generator-jhipster repository

| Type          | Status                                                   | Description                    |
|:--------------|:---------------------------------------------------------|:-------------------------------|
| docker        | [![Build Status][image-docker]][travis-url]              | Build for testing Docker image |
| ngx-maven     | [![Build Status][image-ngx-maven]][travis-url]           | Builds for ngx Maven           |
| ngx-gradle    | [![Build Status][image-ngx-gradle]][travis-url]          | Builds for ngx Gradle          |
| microservices | [![Build Status][image-microservices]][travis-url]       | Builds for Microservices       |
| ms-gradle     | [![Build Status][image-ms-gradle]][travis-url]           | Builds for MS+Gradle           |
| react         | [![Build Status][image-react]][travis-url]               | Builds for React               |
| node latest   | [![Build Status][image-node-latest]][travis-url]         | Builds for Node Latest         |

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
[image-ms-gradle]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=microservices-gradle
[image-react]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=react
[image-node-latest]: https://travis-ci.org/hipster-labs/jhipster-travis-build.svg?branch=node-latest

[sonar-url]: https://sonarcloud.io/dashboard?id=io.github.jhipster.sample%3Ajhipster-sample-application
[sonar-quality-gate]: https://sonarcloud.io/api/project_badges/measure?project=io.github.jhipster.sample%3Ajhipster-sample-application&metric=alert_status
[sonar-coverage]: https://sonarcloud.io/api/project_badges/measure?project=io.github.jhipster.sample%3Ajhipster-sample-application&metric=coverage
[sonar-bugs]: https://sonarcloud.io/api/project_badges/measure?project=io.github.jhipster.sample%3Ajhipster-sample-application&metric=bugs
[sonar-vulnerabilities]: https://sonarcloud.io/api/project_badges/measure?project=io.github.jhipster.sample%3Ajhipster-sample-application&metric=vulnerabilities
