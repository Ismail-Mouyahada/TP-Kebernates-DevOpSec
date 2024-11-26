#!/bin/bash

set -e  # Exit on any error

# Variables
KIND_CONFIG="00-kind-config.yml"
DEPLOYMENT_MANIFESTS="./"
INGRESS_URL="https://kind.sigs.k8s.io/examples/ingress/deploy-ingress-nginx.yaml"
NAMESPACE="ingress-nginx"

echo "===== Starting Kubernetes cluster with kind ====="
kind create cluster --config="$KIND_CONFIG"

echo "===== Applying Kubernetes manifests ====="
kubectl apply -f "$DEPLOYMENT_MANIFESTS"

echo "===== Waiting for pods to be ready ====="
kubectl wait --for=condition=ready pod --all --timeout=300s

echo "===== Deploying NGINX Ingress Controller ====="
kubectl apply -f "$INGRESS_URL"

echo "===== Waiting for Ingress Controller to be ready ====="
kubectl wait --namespace "$NAMESPACE" \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=300s

echo "===== Retrieving Ingress Service Information ====="
kubectl -n "$NAMESPACE" get service

echo "===== Testing Application ====="
# Test Application (adjust the endpoint based on your ingress configuration)
INGRESS_HOST=$(kubectl -n "$NAMESPACE" get service ingress-nginx-controller -o jsonpath='{.status.loadBalancer.ingress[0].ip}' || echo "localhost")
APP_ENDPOINT="${INGRESS_HOST:-localhost}/add"
curl --fail "http://${APP_ENDPOINT}" || echo "Failed to connect to ${APP_ENDPOINT}. Check ingress rules and services."

echo "===== Setup Complete ====="
