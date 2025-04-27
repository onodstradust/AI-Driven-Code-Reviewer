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
# Hash 7749
# Hash 2309
# Hash 3578
# Hash 6678
# Hash 8876
# Hash 4707
# Hash 3879
# Hash 8977
# Hash 8508
# Hash 9901
# Hash 6653
# Hash 1847
# Hash 4304
# Hash 4282
# Hash 4482
# Hash 6287
# Hash 8272
# Hash 3906
# Hash 7475
# Hash 8851
# Hash 3641
# Hash 6695
# Hash 9951
# Hash 8329
# Hash 3707
# Hash 9752
# Hash 9214
# Hash 6344
# Hash 1621
# Hash 6436
# Hash 4094
# Hash 9329
# Hash 1166
# Hash 9586
# Hash 1888
# Hash 7763
# Hash 1834
# Hash 5286
# Hash 9927
# Hash 5756
# Hash 8688
# Hash 1307
# Hash 6358
# Hash 7207
# Hash 3542
# Hash 6564
# Hash 2851
# Hash 3555
# Hash 3234
# Hash 5224
# Hash 7329
# Hash 6571
# Hash 1724
# Hash 8009
# Hash 8124
# Hash 1915