#!/usr/bin/env bash

set -euo pipefail

echo "changing directory to installers"
cd installers

echo "Install the apt-get dependencies"
apt-get --assume-yes install curl unzip less jq
echo "apt-get installation successful"

echo "Downloading AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
echo "Unzipping AWS CLI"
unzip awscliv2.zip
echo "Installing AWS CLI"
./aws/install
echo "Installing AWS Completed & Version is:"
aws --version

echo "install kubectl"
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/kubectl
curl -o kubectl.sha256 https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/kubectl.sha256
chmod +x ./kubectl
echo "creating dir"
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
kubectl version --short --client

echo "install Helm"
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh