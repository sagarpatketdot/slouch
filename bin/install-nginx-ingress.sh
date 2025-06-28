#!/bin/bash

set -e
cd $(dirname $0)

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx -n ingress-nginx --create-namespace -f ../values/ingress-nginx.yaml
