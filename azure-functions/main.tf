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

resource "azurerm_linux_function_app" "LinuxFunctionApp1" {
  name                = "linuxfunctionapp1"
  resource_group_name = azurerm_resource_group.resourcegroup1.name
  location            = azurerm_resource_group.resourcegroup1.location

  storage_account_name       = azurerm_storage_account.storageaccount1.name
  storage_account_access_key = azurerm_storage_account.storageaccount1.primary_access_key
  service_plan_id            = azurerm_service_plan.serviceplan1.id

  site_config {}
}

resource "azurerm_function_app_function" "FunctionAppFunction1" {
  name            = "functionappfunction1"
  function_app_id = azurerm_linux_function_app.linuxfunctionapp1.id
  language        = "Python"
  test_data = jsonencode({
    "name" = "Azure"
  })
  config_json = jsonencode({
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods" = [
          "get",
          "post",
        ]
        "name" = "req"
        "type" = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      },
    ]
  })
}
