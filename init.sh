RESOURCE_GROUP=rg-5
AKS_CLUSTER=kube01
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER
