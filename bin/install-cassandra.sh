#!/bin/bash

set -e
cd $(dirname $0)

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install cassandra bitnami/cassandra -f ../values/cassandra.yaml -n cassandra --create-namespace
