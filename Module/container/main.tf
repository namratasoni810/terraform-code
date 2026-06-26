resource "azurerm_storage_container" "container" {
 name = var.container_name
 container_access_type = "private"
 storage_account_id = var.storage_account_id
#  storage_name = var.storage_name
#  storage_name = var.storage_name
}
