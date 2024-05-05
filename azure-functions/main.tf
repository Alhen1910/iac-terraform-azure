resource "azurerm_resource_group" "resourcegroup1" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "StorageAccount1" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resourcegroup1.name
  location                 = azurerm_resource_group.resourcegroup1.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = {
    environment = var.storage_account_environment
  }
}

resource "azurerm_service_plan" "ServicePlan1" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.resourcegroup1.name
  location            = azurerm_resource_group.resourcegroup1.location
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku_name
}

resource "azurerm_linux_function_app" "LinuxFunctionApp1" {
  name                = var.linux_function_app_name
  resource_group_name = azurerm_resource_group.resourcegroup1.name
  location            = azurerm_resource_group.resourcegroup1.location

  storage_account_name       = azurerm_storage_account.StorageAccount1.name
  storage_account_access_key = azurerm_storage_account.StorageAccount1.primary_access_key
  service_plan_id            = azurerm_service_plan.serviceplan1.id

  site_config {}
}

resource "azurerm_function_app_function" "FunctionAppFunction1" {
  name            = var.function_app_function_name
  function_app_id = azurerm_linux_function_app.LinuxFunctionApp1.id
  language        = var.function_app_function_language
  test_data = jsonencode({
    "name" = var.function_app_function_test_date_name
  })
  config_json = jsonencode({
    "bindings" = [
      {
        "authLevel" = var.function_app_function_authlevel
        "direction" = var.function_app_function_bindings_direction
        "methods" = [
          var.function_app_function_get_method,
          var.function_app_function_post_method,
        ]
        "name" = var.function_app_function_bindings_name
        "type" = var.function_app_function_bindings_type
      },
      {
        "direction" = var.function_app_function_direction
        "name"      = var.function_app_function_bindings_name_2
        "type"      = var.function_app_function_bindings_type_2
      },
    ]
  })
}
