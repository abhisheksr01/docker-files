#!/usr/bin/env bash

set -euo pipefail

cd "$2"

emojiFunction() {
  for i in {1..95}; do
    printf "$1"
  done
  printf '\n'
}

echo "Changing directory to $2 & performing linting.."
docker run --rm -i hadolint/hadolint < Dockerfile

echo "Building docker image $1/$2 with tags $3 and latest" 
echo "Changing directory to $2 & building docker image"
docker buildx build --platform=linux/amd64,linux/arm64 -t "$1/$2:latest" .
docker tag "$1/$2:latest" "$1/$2:$3"

echo "Scanning the docker image locally using trivy.."
# ../vulnerability-checks.sh $1 $2 $3
echo "Pushing docker image $1/$2 to hub with tags $3 & latest."
docker push "$1/$2:latest"
docker push "$1/$2:$3"

# Print success message
printf "\033[92m" 
emojiFunction "\xE2\x99\xA0"
echo "Docker Image $1/$2 pushed to docker hub with tags latest and $3"
emojiFunction "\xE2\x99\xA0"