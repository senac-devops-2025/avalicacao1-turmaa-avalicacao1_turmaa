provider "azurerm" {
  features {}
  subscription_id = "d1d02f10-2705-4dcc-9caa-c17bcd92e98a"
}

resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-equipe"
  location = "Brazil South"
}

resource "azurerm_storage_account" "storage" {
  name                     = "storagedevopsjonatas04"
  resource_group_name      = azurerm_resource_group.rg_devops.name
  location                 = azurerm_resource_group.rg_devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
