variable "blob_storage_resource_group_name" {
	type = string
	default = "resourcegroup2"
}

variable "blob_storage_resource_group_location" {
	type = string
	default = "West Europe"
}

variable "blob_storage_storage_account_name" {
	type = string
	default = "storageaccount2"
}

variable "blob_storage_storage_account_tier" {
	type = string
	default = "Standard"
}

variable "blob_storage_storage_account_replication_type" {
	type = string
	default = "GRS"
}

variable "blob_storage_storage_account_environment" {
	type = string
	default = "staging"
}
