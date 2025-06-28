#!/bin/bash

set -e
cd $(dirname $0)

./create-cluster.sh
./install-nginx-ingress.sh