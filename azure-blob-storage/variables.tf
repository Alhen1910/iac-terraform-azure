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

variable "storage_container_name" {
	type = string
	default = "storagecontainer1"
}

variable "storage_container_access_type" {
	type = string
	default = "private"
}

variable "storage_blob_name" {
	type = string
	default = "storageblob1.zip"
}

variable "storage_blob_type" {
	type = string
	default = "Block"
}

variable "storage_blob_source" {
	type = string
	default = "blobsource.zip"
}
