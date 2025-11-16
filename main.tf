provider "azurerm" {
  features {}
  subscription_id = "70c39920-137e-46a1-82dc-e2a69f1cf829"
}

resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-equipe"
  location = "northcentralus"
}

resource "azurerm_storage_account" "storage" {
  name                     = "storagedevopjoaovictor3"
  resource_group_name      = azurerm_resource_group.rg_devops.name
  location                 = azurerm_resource_group.rg_devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
