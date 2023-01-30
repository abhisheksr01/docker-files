FROM python:3.9-buster

# Metadata
LABEL org.opencontainers.image.title="abhisheksr01/py-poetry" \
      org.opencontainers.image.url="https://hub.docker.com/repository/docker/abhisheksr01/py-poetry"

RUN apt-get update \
    && apt-get install --no-install-recommends -y libp11-kit0=0.23.15-2+deb10u1 \
    && pip install --no-cache-dir --user poetry==1.3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="${PATH}:/root/.local/bin"