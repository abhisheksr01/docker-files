# [dind-utils-concourse - Docker in Docker Utils for Concourse](https://hub.docker.com/r/abhisheksr01/dind-utils-concourse)

This image is built using the great work of [karlkfi](https://github.com/karlkfi/concourse-dcind).

As it seems like the original repository is no longer maintained hence I have reused the code from the base repository and updated the dependencies accordingly.

The image additionally contains utilities like [hadolint](https://github.com/hadolint/hadolint) for Dockerfile linting and [Trivy](https://github.com/aquasecurity/trivy) for scanning Docker images.

## Usage

This image is specificially built for using within Concourse Pipeline as the conventional DIND images doesn't work.

Sample usage in a CI/CD pipeline can be found here:

- [Concourse](https://github.com/abhisheksr01/zero-2-hero-python-flask-microservice/blob/ce47ad3413e030b3bd1f18be93d02678c4f0bfa2/concourse-ci/pipeline.yml#L121)

Currently hosted in docker hub & can be pulled by executing below command:

```
docker pull abhisheksr01/dind-utils-concourse:latest
```

## Main Tooling

| Tool          | Version Installed       |
|:--------------|:------------------------|
| docker        | 20.10.6                 |
| docker-compose| 1.29.2                  |
| hadolint      | 2.4.1                   |
| trivy         | 0.18.3                  |