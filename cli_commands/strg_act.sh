# creating of a storage account 
az storage account create \
    --name "chiteststrg2" \
    --resource-group "testgroup" \
    --location "westus" \
    --sku Standard_LRS \
    --hns true \
    --kind StorageV2


# To confirm if str account exist 
az storage account show --name chiteststrg2 --resource-group testgroup