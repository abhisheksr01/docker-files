FROM python:3.9.2-buster

# Metadata
LABEL org.opencontainers.image.title="abhisheksr01/terraform-pytest" \
      org.opencontainers.image.url="https://hub.docker.com/repository/docker/abhisheksr01/terraform-pytest"

ADD ./utils.sh installers/

RUN apt-get update

RUN apt-get install libp11-kit0=0.23.15-2+deb10u1

RUN pip install --user poetry

ENV PATH="${PATH}:/root/.local/bin"

RUN ./installers/utils.sh