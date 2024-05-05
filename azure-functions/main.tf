resource "azurerm_resource_group" "resourcegroup1" {
  name     = "resourcegroup1"
  location = "West Europe"
}

resource "azurerm_storage_account" "StorageAccount1" {
  name                     = "storageaccount1"
  resource_group_name      = azurerm_resource_group.resourcegroup1.name
  location                 = azurerm_resource_group.resourcegroup1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_service_plan" "ServicePlan1" {
  name                = "serviceplan1"
  resource_group_name = azurerm_resource_group.resourcegroup1.name
  location            = azurerm_resource_group.resourcegroup1.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}
