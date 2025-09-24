resource "azurerm_resource_group" "mahadev" {
  name = "mahakal5"
  location = "westeurope"
}

resource "azurerm_storage_account" "omkara" {
  name = "amarnath123"
  resource_group_name = azurerm_resource_group.mahadev.name
  location = "westeurope"
  account_replication_type = "LRS"
  account_tier = "Standard"
}

resource "azurerm_virtual_network" "vnet" {
  name = "vnetmahadev"
  location = azurerm_resource_group.mahadev.location
resource_group_name =  azurerm_resource_group.mahadev.name
address_space = ["10.0.0.1/16"]
}