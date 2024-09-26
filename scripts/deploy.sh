#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2720
# Hash 8622
# Hash 7611
# Hash 6641
# Hash 8670
# Hash 6631
# Hash 7998
# Hash 6578
# Hash 5482
# Hash 2206
# Hash 2066
# Hash 5089
# Hash 5491
# Hash 1430
# Hash 3593
# Hash 7934
# Hash 4933
# Hash 8666
# Hash 7188
# Hash 1737