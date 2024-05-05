output "azurem_storage_blob_url" {
  description = "Display url for azurem_storage_blob"
  value       = azurem_storage_blob.var.storage_blob_name.endpoint
}
