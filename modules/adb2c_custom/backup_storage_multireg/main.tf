# Resource Group for Blob Storage in Region A
resource "azurerm_resource_group" "rg_region_a" {
  name     = "backup-rg-region-a"
  location = "East US"  # Replace with your preferred region A
}

# Storage Account in Region A
resource "azurerm_storage_account" "storage_region_a" {
  name                     = "backupstoragea"
  resource_group_name      = azurerm_resource_group.rg_region_a.name
  location                 = azurerm_resource_group.rg_region_a.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}

# Blob Container in Region A
resource "azurerm_storage_container" "backup_container_region_a" {
  name                  = "b2c-backups-region-a"
  storage_account_name  = azurerm_storage_account.storage_region_a.name
  container_access_type = "private"
}

# Resource Group for Blob Storage in Region B
resource "azurerm_resource_group" "rg_region_b" {
  name     = "backup-rg-region-b"
  location = "West Europe"  # Replace with your preferred region B
}

# Storage Account in Region B
resource "azurerm_storage_account" "storage_region_b" {
  name                     = "backupstorageb"
  resource_group_name      = azurerm_resource_group.rg_region_b.name
  location                 = azurerm_resource_group.rg_region_b.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}