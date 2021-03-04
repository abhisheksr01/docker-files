# docker-files
Repository to hold custom Dockerfile's for various purposes &amp; are stored in docker hub.

## Building an image

Below command creates the docker image with the given tag & latest then pushes to the registry.

```
./build-push-image.sh abhisheksr01 eks-helm 0.0.1
```

Format:

```
./build-push-image.sh [DOCKER_HUB_USERNAME] [DIRECTORY/DOCKER_IMAGE_NAME] [TAG]
```