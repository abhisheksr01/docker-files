# Docker-Files

Collection of custom Dockerfile's for various purposes and are hosted on Docker Hub with a pattern **abhisheksr01/[IMAGE-NAME]**

## Multi-Platform Docker Images

Docker images can support multiple platforms, which means that a single image may contain variants for different architectures, and sometimes for different operating systems, such as Windows.

When you run an image with multi-platform support, Docker automatically selects the image that matches your OS and architecture.

This is one of the most common issues we will find when using Macbook Intel vs Macbook M series chipset. To learn more about it [click here](https://docs.docker.com/build/building/multi-platform/)

Before you begin ensure you have enabled `containerd image store`. [Click here to see the instructions](https://docs.docker.com/desktop/containerd/#turn-on-the-containerd-image-store-feature)
## List of Dockerfiles

The repo contains below docker files, click on the individual link to learn more.

- [aws-pytest](./terraform-pytest)
- [dind-utils - Docker in Docker Utils](./dind-utils)
- [dind-utils-concourse - Docker in Docker Utils for Concourse](./dind-utils-concourse)
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
./build-scan-push-image.sh [DOCKER_HUB_USERNAME] [DIRECTORY_NAME] [TAG]
```
Here your directory name is going to be the Docker Image Name.

Example execution of the command:
```
./build-scan-push-image.sh abhisheksr01 eks-helm 0.0.1
```
