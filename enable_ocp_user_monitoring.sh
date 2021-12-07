#!/bin/bash

oc patch configmap/cluster-monitoring-config -n openshift-monitoring -p '{"data":{"config.yaml": "alertmanagerMain: {}\nprometheusK8s: {}\nenableUserWorkload: true\n"}}'
