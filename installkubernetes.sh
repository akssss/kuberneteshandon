#!/bin/bash
set -xe

sudo apt-get update
sudo apt-get install --no-install-recommends -y \
        ca-certificates \
        git \
        make \
        jq \
        nmap \
        curl \
        uuid-runtime

git clone https://git.openstack.org/openstack/openstack-helm-infra.git
git clone https://git.openstack.org/openstack/openstack-helm.git

cd openstack-helm
./tools/deployment/developer/common/010-deploy-k8s.sh
