RESOURCE_GROUP='rg5'
AKS_CLUSTER='TestHtml01'
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER
kubectl expose deployment testhtml-deployment --port=80 --type=LoadBalancer
