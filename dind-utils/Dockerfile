FROM docker:20.10

LABEL org.opencontainers.image.title="abhisheksr01/docker-utils" \
      org.opencontainers.image.url="https://hub.docker.com/repository/docker/abhisheksr01/docker-utils"

WORKDIR $HOME/opt

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

RUN apk update && apk add curl=7.80.0-r0 bash=5.1.8-r0 --no-cache && \
    curl -L https://github.com/hadolint/hadolint/releases/download/v2.4.1/hadolint-Linux-x86_64 > hadolint && \
    chmod 0775 hadolint && mv hadolint ../bin/ && \
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/master/contrib/install.sh | sh -s -- -b /usr/local/bin && \
    apk del curl && rm -rf /var/cache/apk/*