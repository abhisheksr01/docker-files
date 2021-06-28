FROM abhisheksr01/alpine:0.0.2

ENV DOCKER_CHANNEL=stable \
    DOCKER_VERSION=20.10.6 \
    DOCKER_COMPOSE_VERSION=1.29.2 \
    DOCKER_SQUASH=0.2.0

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install Docker, Docker Compose, Docker Squash
RUN apk --update --no-cache add \
        device-mapper \
	python3 \
        py3-pip \
        python3-dev \
        iptables \
        util-linux \
        ca-certificates \
        gcc \
        libc-dev \
        libffi-dev \
        openssl-dev \
        make \
        cargo \
        && \
    curl -fL "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz" | tar zx && \
    mv /docker/* /bin/ && chmod +x /bin/docker* && \
    # pip3 install --upgrade pip && \
    # pip3 install wheel && \
    curl -L https://github.com/hadolint/hadolint/releases/download/v2.4.1/hadolint-Linux-x86_64 > hadolint && \
    chmod 0775 hadolint && mv hadolint ../bin/ && \
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/master/contrib/install.sh | sh -s -- -b /usr/local/bin && \
    pip3 install --no-cache-dir docker-compose==${DOCKER_COMPOSE_VERSION} && \
    curl -fL "https://github.com/jwilder/docker-squash/releases/download/v${DOCKER_SQUASH}/docker-squash-linux-amd64-v${DOCKER_SQUASH}.tar.gz" | tar zx && \
    mv /docker-squash* /bin/ && chmod +x /bin/docker-squash* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]