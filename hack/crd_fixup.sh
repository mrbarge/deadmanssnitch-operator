#!/bin/bash

# Commands need to be run from project root
cd "$( dirname "${BASH_SOURCE[0]}" )"/..

# This can be removed once the operator no longer needs to be run on
# OpenShift v3.11
yq d -i deploy/crds/deadmanssnitch.managed.openshift.io_deadmanssnitchintegrations_crd.yaml \
   spec.validation.openAPIV3Schema.type
