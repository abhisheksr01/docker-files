# [dind-utils - Docker in Docker Utils](https://hub.docker.com/r/abhisheksr01/dind-utils)

This image is built from [docker:20.10](https://hub.docker.com/_/docker?tab=description&page=1&ordering=last_updated)
which is docker-in-docker base image.

The image contains utilities like [hadolint](https://github.com/hadolint/hadolint) for Dockerfile linting
and [Trivy](https://github.com/aquasecurity/trivy) for scanning Docker images.

## Usage

Ideally, the docker-utils images are meant for using it within a CI/CD pipeline for building docker image & performing
additional operations like lining & image vulnerability scanning.

Sample usage in a CI/CD pipeline can be found here:

- [CircleCI](https://github.com/abhisheksr01/spring-boot-microservice-best-practices/blob/ad3f66bac9b777c52a1f56659f413acfc47ece39/.circleci/config.yml#L157)

Currently hosted in docker hub & can be pulled by executing below command:

```
docker pull abhisheksr01/dind-utils:latest
```

## Versions

| dind-utils versions | dependencies Installed                                                   |
|:--------------------|:-------------------------------------------------------------------------|
| 1.0.0 (latest)      | docker=24.0.7,hadolint=2.12.0,trivy=0.48.3,curl=7.77.0-r0,bash=5.2.21-r0 |
| 0.0.1               | docker=20.10.6,hadolint=2.4.1,trivy=0.18.3,curl=7.77.0-r0,bash=5.1.8-r0  |
