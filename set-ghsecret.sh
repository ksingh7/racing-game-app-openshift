#!/usr/bin/env bash

@echo off
set -e
set -o pipefail

echo DOCKER_USERNAME
echo DOCKER_PASSWORD
echo QUAY_DOCKER_CONFIG_JSON_PULL_SECRET
echo CONTAINER_REGISTRY
echo OPENSHIFT_DEV_SERVER_URL
echo OPENSHIFT_DEV_TOKEN
echo OPENSHIFT_DEV_NAMESPACE
echo OPENSHIFT_PROD_SERVER_URL
echo OPENSHIFT_PROD_TOKEN
echo OPENSHIFT_PROD_NAMESPACE

require_args()
{
  local operation=$1 want=$2 have=$3
  if [ "$want" -ne "$have" ] ; then
    echo "ERROR: incorrect number of arguments for '$operation'" >&2
    exit 1
  fi
}

gh secret set OPENSHIFT_SERVER -b OPENSHIFT_SERVER
gh secret set OPENSHIFT_TOKEN -b OPENSHIFT_TOKEN