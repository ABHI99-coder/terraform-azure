provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "github"
  location = "Central US"
}

resource "azurerm_storage_account" "storage_acc" {
  name                     = "github_terraform"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
