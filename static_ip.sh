# create Static IP address
az network public-ip create \
    --resource-group rg-5 \
    --name ip \
    --allocation-method static

az network public-ip show --resource-group rg-5 --name ip --query ipAddress --output tsv
