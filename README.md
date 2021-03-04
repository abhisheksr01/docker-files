# Docker-Files

Collection of custom Dockerfile's for various purposes and are stored in docker hub.

Additional information are available in the README of the respective dockerfile directory.

## Building an image

The below command performs 3 keys operations:
* Creates the docker images with the given tag
* Locally scan the docker image vulnerabilities using Trivy
* Push the image to the registry

Note:

Before executing the command you must be logged in to the registry (Docker Hub, JFrog etc).</br>
If a vulnerability has been identified that the images won't be pushed to the registry.

```
./build-scan-push-image.sh [DOCKER_HUB_USERNAME] [DIRECTORY/DOCKER_IMAGE_NAME] [TAG]
```

Example execution of the command:
```
./build-scan-push-image.sh abhisheksr01 eks-helm 0.0.1
```