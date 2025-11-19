
provider "azurerm" {
  subscription_id = "e37f0453-2f96-4df5-a817-844232ac0687"
  features {}
}

resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-equipe-grupo-1-rafael-goulart"
  location = "Brazil South"
}

resource "azurerm_storage_account" "storage" {
  name                     = "storagedevopsequipe1rafa"
  resource_group_name      = azurerm_resource_group.rg_devops.name
  location                 = azurerm_resource_group.rg_devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}