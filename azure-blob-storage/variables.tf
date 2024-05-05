variable "resource_group_name" {
	type = string
	default = "resourcegroup2"
}

variable "resource_group_location" {
	type = string
	default = "West Europe"
}

variable "storage_account_name" {
	type = string
	default = "storageaccount2"
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
