# EKS Helm Docker Image

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