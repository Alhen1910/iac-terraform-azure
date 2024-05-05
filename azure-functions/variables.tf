variable "resource_group_name" {
	type = string
	default = "resourcegroup1"
}

variable "resource_group_location" {
	type = string
	default = "West Europe"
}

variable "storage_account_name" {
	type = string
	default = "storageaccount1"
}

variable "storage_account_tier" {
	type = string
	default = "Standard"
}

variable "storage_account_replication_type" {
	type = string
	default = "GRS"
}

variable "storage_account_environment" {
	type = string
	default = "staging"
}

variable "service_plan_name" {
	type = string
	default = "serviceplan1"
}

variable "service_plan_os_type" {
	type = string
	default = "Linux"
}

variable "service_plan_sku_name" {
	type = string
	default = "P1v2"
}

variable "linux_function_app_name" {
	type = string
	default = "linuxfunctionapp1"
}

variable "function_app_function_name" {
	type = string
	default = "functionappfunction1"
}

variable "function_app_function_language" {
	type = string
	default = "Python"
}

variable "function_app_function_test_date_name" {
	type = string
	default = "Azure"
}

variable "function_app_function_authlevel" {
	type = string
	default = "function"
}

variable "function_app_function_bindings_direction" {
	type = string
	default = "in"
}

variable "function_app_function_get_method" {
	type = string
	default = "get"
}

variable "function_app_function_post_method" {
	type = string
	default = "post"
}

variable "function_app_function_bindings_name" {
	type = string
	default = "req"
}

variable "function_app_function_bindings_type" {
	type = string
	default = "httpTrigger"
}

variable "function_app_function_direction" {
	type = string
	default = "out"
}

variable "function_app_function_bindings_name_2" {
	type = string
	default = "$return"
}

variable "function_app_function_bindings_type_2" {
	type = string
	default = "http"
}
