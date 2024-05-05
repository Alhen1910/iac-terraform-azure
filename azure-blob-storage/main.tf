resource "azurerm_resource_group" "resourcegroup2" {
  name     = var.blob_storage_resource_group_name
  location = var.blob_storage_resource_group_location
}

resource "azurerm_storage_account" "StorageAccount2" {
  name                     = var.blob_storage_storage_account_name
  resource_group_name      = azurerm_resource_group.resourcegroup1.name
  location                 = azurerm_resource_group.resourcegroup1.location
  account_tier             = var.blob_storage_storage_account_tier
  account_replication_type = var.blob_storage_storage_account_replication_type

  tags = {
    environment = var.blob_storage_storage_account_environment
  }
}

resource "azurerm_storage_container" "StorageContainer1" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storagecontainer1.name
  container_access_type = var.storage_container_access_type
}
