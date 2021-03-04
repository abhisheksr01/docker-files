#!/usr/bin/env bash

set -euo pipefail

cd "$2"

emojiFunction() {
  for i in {1..95}; do
    printf "$1"
  done
  printf '\n'
}

echo "Changing directory to $2"
docker build -t $1/"$2":latest .
docker tag $1/"$2":latest "$1/$2:$3"
docker push $1/"$2":latest
docker push "$1/$2:$3"

# Print success message
printf "\033[92m" 
emojiFunction "\xE2\x99\xA0"
echo "Docker Image $1/$2 pushed to docker hub with tags latest and $3"
emojiFunction "\xE2\x99\xA0"