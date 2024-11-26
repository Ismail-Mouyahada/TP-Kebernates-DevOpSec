#!/bin/bash

DEPLOYMENT_NAME="app-deployment"
NAMESPACE="default"

# Appliquer le déploiement
kubectl apply -f 04-app-deployment.yml

# Vérifier si le déploiement est en progression
if ! kubectl rollout status deployment/${DEPLOYMENT_NAME} -n ${NAMESPACE} --timeout=60s; then
    echo "Déploiement échoué, rollback en cours..."
    kubectl rollout undo deployment/${DEPLOYMENT_NAME} -n ${NAMESPACE}
else
    echo "Déploiement réussi !"
fi
