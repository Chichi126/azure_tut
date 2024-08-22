resource "azurerm_resource_group" "firstrg" {
  name     = "chidec"
  location = "West US"
}

resource "azurerm_storage_account" "firstchistorage" {
  name                      = "chistoragedec"
  resource_group_name       = azurerm_resource_group.firstrg.name
  location                  = azurerm_resource_group.firstrg.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = true
  account_kind              = "StorageV2"
  is_hns_enabled            = true # Enable hierarchical namespace (ADLS Gen2)


  tags = {
    environment = "staging"
  }
}