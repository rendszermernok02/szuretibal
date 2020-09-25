RESOURCE_GROUP=rg5
AKS_CLUSTER=kube01
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER
