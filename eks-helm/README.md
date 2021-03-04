# EKS Helm Docker Image

This image is built to perform helm deployment to the AWS EKS Cluster within a CI Server.

## Usage

A sample usage can be found for concourse here:

https://github.com/abhisheksr01/spring-boot-microservice-best-practices/blob/4224ef9813835b6bd17bcf7ca6da51c6cac34bbe/concourse-ci/pipeline.yml#L100

Currently hosted in docker hub & can be pulled by executing below command:

```
docker pull abhisheksr01/eks-helm:latest
```

The dockerfile uses(shamelessly) bits from aws-cli official Dockerfile available [here](https://github.com/aws/aws-cli/blob/v2/docker/Dockerfile).

## Tooling

| Tool          | Version Installed       |
|:--------------|:------------------------|
| aws-cli       | v2                      |
| helm          | 3                       |