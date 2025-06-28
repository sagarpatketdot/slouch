#!/bin/bash

set -e
cd $(dirname $0)

kind create cluster --config ../kind.yaml