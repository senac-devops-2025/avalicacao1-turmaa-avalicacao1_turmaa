terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0" 
    }
  }
}

provider "azurerm" {
  subscription_id = "85a15a1f-3207-4385-9789-02c3a935fdb3"
  features {}
}

resource "random_id" "sufixo_unico" {
  byte_length = 4
}

resource "azurerm_resource_group" "rg_devops" {
  name     = "rg-devops-equipe"
  location = "eastus2"
}

resource "azurerm_storage_account" "storage" {
  
  name = "stgdevequipe${random_id.sufixo_unico.hex}"
  
  resource_group_name      = azurerm_resource_group.rg_devops.name
  location                 = azurerm_resource_group.rg_devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}