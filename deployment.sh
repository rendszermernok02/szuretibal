RESOURCE_GROUP=rg5
AKS_CLUSTER=kube01
az aks get-credentials --resource-group $RESOURCE_GROUP --name $AKS_CLUSTER

# Enter your details below.
PIP_RESOURCE_GROUP=rg5
AKS_RESOURCE_GROUP=rg5
AKS_CLUSTER_NAME=kube01
# Do not change anything below this line
CLIENT_ID=$(az aks show --resource-group $AKS_RESOURCE_GROUP --name $AKS_CLUSTER_NAME --query "servicePrincipalProfile.clientId" --output tsv)
SUB_ID=$(az account show --query "id" --output tsv)
 
az role assignment create\
    --assignee $CLIENT_ID \
    --role "Network Contributor" \
    --scope /subscriptions/$SUB_ID/resourceGroups/$PIP_RESOURCE_GROUP
