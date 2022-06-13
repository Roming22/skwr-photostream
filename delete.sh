#!/bin/bash -e
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
SRC_DIR="${SCRIPT_DIR}/k8s"
for MANIFEST in ingress.secret.yml service.yml deployments.yml volumes.yml; do\
    kubectl delete -f "${SRC_DIR}/${MANIFEST}"
done
