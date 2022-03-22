#!/bin/sh
  
# Create Resource Group
az group create -l koreacentral -n rg-aks-tfstate
  
# Create Storage Account
az storage account create -n sa4akstfstate -g rg-aks-tfstate -l koreacentral  --sku Standard_LRS
  
# Create Storage Account blob
az storage container create  --name tfstatecont --account-name sa4akstfstate