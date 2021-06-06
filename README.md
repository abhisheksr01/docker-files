# Docker-Files

Collection of custom Dockerfile's for various purposes and are stored in Docker Hub with a pattern **abhisheksr01/[IMAGE-NAME]**

## List of Dockerfiles

The repo contains below docker files, click on the individual link to learn more.

- [alpine](./alpine)
- [aws-pytest](./terraform-pytest)
- [dind-utils - Docker in Docker Utils](./dind-utils)
- [eks-helm](./eks-helm)
- [py-poetry](./py-poetry)

## Building an image

The below command performs 3 key operations:
* Performs Dockerfile linting using [hadolint](https://github.com/hadolint/hadolint)
* Creates the docker image with the given tag
* Locally scan the docker image vulnerabilities using [Trivy](https://github.com/aquasecurity/trivy)
* Push the image to the registry

Note:

Before executing the command you must have Docker running and logged in to the registry (Docker Hub, JFrog etc).</br>
If a vulnerability has been identified than the image won't be pushed to the registry.

Execute below command from the root of the directory:

```
./build-scan-push-image.sh [DOCKER_HUB_USERNAME] [DIRECTORY/DOCKER_IMAGE_NAME] [TAG]
```

Example execution of the command:
```
./build-scan-push-image.sh abhisheksr01 eks-helm 0.0.1
```
