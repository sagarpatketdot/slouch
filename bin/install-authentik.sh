#!/bin/bash

set -e
cd $(dirname $0)

helm repo add authentik https://charts.goauthentik.io
helm repo update
helm upgrade --install authentik authentik/authentik -f ../values/authentik.yaml -n authentik --create-namespace
