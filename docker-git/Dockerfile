FROM docker:stable-git

WORKDIR $HOME/opt

RUN apk update && apk add curl=7.77.0-r0 bash=5.0.17-r0 trivy --no-cache && \
    rm -rf /var/cache/apk/* && \
    curl -L https://github.com/hadolint/hadolint/releases/download/v2.4.1/hadolint-Linux-x86_64 > hadolint && \
    chmod 0775 hadolint && mv hadolint ../bin/
