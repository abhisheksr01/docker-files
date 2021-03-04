FROM amazonlinux:2 as installer

LABEL maintainer="Abhishek Rajput"

# Metadata
LABEL org.opencontainers.image.title="abhisheksr01/eks-helm" \
      org.opencontainers.image.url="https://helm.sh/docs/"

ARG EXE_FILENAME=awscli-exe-linux-x86_64.zip
RUN yum update -y \
  && yum install -y curl unzip \
  && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  # The --bin-dir is specified so that we can copy the
  # entire bin directory from the installer stage into
  # into /usr/local/bin of the final stage without
  # accidentally copying over any other executables that
  # may be present in /usr/local/bin of the installer stage.
  && ./aws/install --bin-dir /aws-cli-bin/

FROM amazonlinux:2
RUN yum update -y \
  && yum install -y less groff curl openssl tar gzip \
  && yum clean all
COPY --from=installer /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=installer /aws-cli-bin/ /usr/local/bin/

## Install helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
  && chmod 700 get_helm.sh \
  && ./get_helm.sh
  