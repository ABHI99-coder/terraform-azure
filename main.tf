provider "azurerm" {
  features = {}

  client_id       = env.ARM_CLIENT_ID
  client_secret   = env.ARM_CLIENT_SECRET
  tenant_id       = env.ARM_TENANT_ID
  subscription_id = env.ARM_SUBSCRIPTION_ID
}

resource "azurerm_resource_group" "rg" {
  name     = "github"
  location = "Central US"
}

resource "azurerm_storage_account" "storage_acc" {
  name                     = "githubterraform"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
