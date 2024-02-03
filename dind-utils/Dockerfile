FROM docker:24.0.9

LABEL org.opencontainers.image.title="abhisheksr01/dind-utils" \
      org.opencontainers.image.url="https://hub.docker.com/repository/docker/abhisheksr01/dind-utils"

WORKDIR $HOME/opt

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

RUN apk update && apk add curl=8.5.0-r0 --no-cache && apk add bash=5.2.21-r0 --no-cache && \
    curl -L https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64 > hadolint && \
    chmod 0775 hadolint && mv hadolint ../bin/ && \
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/master/contrib/install.sh | sh -s -- -b /usr/local/bin && \
    apk del curl && rm -rf /var/cache/apk/*