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
# Hash 5840
# Hash 7957
# Hash 2716
# Hash 1880
# Hash 3630
# Hash 7760
# Hash 4124
# Hash 1622
# Hash 5925
# Hash 6222
# Hash 2676
# Hash 8747
# Hash 1737
# Hash 9595
# Hash 1352
# Hash 6986
# Hash 6483
# Hash 5991
# Hash 3661
# Hash 1188
# Hash 1370
# Hash 3154
# Hash 9032
# Hash 7997
# Hash 2055
# Hash 7148
# Hash 6756
# Hash 5832
# Hash 9071
# Hash 5071
# Hash 1995
# Hash 5757
# Hash 8112
# Hash 2649
# Hash 9657
# Hash 3110
# Hash 9759
# Hash 4263
# Hash 1197
# Hash 8162
# Hash 8717
# Hash 7686
# Hash 4879
# Hash 4204
# Hash 5462
# Hash 6082
# Hash 7716
# Hash 2921
# Hash 4565
# Hash 7620
# Hash 3521
# Hash 4901
# Hash 3853
# Hash 8879
# Hash 9714
# Hash 3949
# Hash 8330
# Hash 5807
# Hash 5898
# Hash 9499
# Hash 3333
# Hash 7705
# Hash 5591
# Hash 6344
# Hash 5697
# Hash 5417
# Hash 1527
# Hash 9990
# Hash 4486
# Hash 8760
# Hash 1075
# Hash 3051
# Hash 7529
# Hash 5176
# Hash 4317
# Hash 7736
# Hash 2463
# Hash 5654
# Hash 4891
# Hash 9379
# Hash 4388
# Hash 6764
# Hash 9866
# Hash 9102
# Hash 8566
# Hash 6679
# Hash 8322
# Hash 1576
# Hash 9523
# Hash 8529
# Hash 2823
# Hash 3407
# Hash 5227
# Hash 3090
# Hash 6126
# Hash 4926
# Hash 6624
# Hash 5372
# Hash 2425
# Hash 1782
# Hash 7371
# Hash 5418
# Hash 1071
# Hash 5632
# Hash 7317
# Hash 7450
# Hash 6556
# Hash 1730
# Hash 2655
# Hash 9455
# Hash 1877
# Hash 4850
# Hash 3239