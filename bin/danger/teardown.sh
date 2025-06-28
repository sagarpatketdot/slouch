#!/bin/bash

set -e
cd $(dirname $0)

kind delete cluster -n slouch-cluster