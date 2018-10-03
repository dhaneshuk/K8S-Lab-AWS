#!/bin/bash
wget -O /tmp/weavenet.yml https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')
