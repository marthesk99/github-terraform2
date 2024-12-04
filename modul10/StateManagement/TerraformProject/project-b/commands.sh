terraform state rm module.storage.azurerm_storage_account.sa-demo 

az resource move --destination-group rg-demo-project-b \
  --ids /subscriptions/your-subscription-id/resourceGroups/rg-demo-project-a/providers/Microsoft.Storage/storageAccounts/your-storage-account-name



# List resources of a specific type
az resource list --resource-type "Microsoft.Storage/storageAccounts" --output table

# Get the id of a specific resource
az resource show --resource-group rg-demo-project-b --name sademomsk123 --resource-type "Microsoft.Storage/storageAccounts" --query id --output tsv


# List tfstate file located in storae account
az storage blob list --account-name sabkmskpdi --container-name sc-backend-msk --output table

# Create a json file with the current state file
az storage blob download --account-name sabkmskpdi --container-name sc-backend-msk --name project_a.tfstate --file project_a.tfstate
az storage blob download --account-name sabkmskpdi --container-name sc-backend-msk --name project_b.tfstate --file project_b.tfstate

# Delete tfstate file from storage account
az storage blob delete --account-name sabkmskpdi --container-name sc-backend-msk --name project_a.tfstate
az storage blob delete --account-name sabkmskpdi --container-name sc-backend-msk --name project_b.tfstate