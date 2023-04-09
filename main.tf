terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tle1rg1"
    storage_account_name = "tle1str1"
    container_name = "tfstate"
    key = "test.jenkins.tfstate"
    access_key = "xwZliHx2lRUa5o5WPK99S402n3XKNv+dhaxPKWtASXoA9UP+5ALI8SY2ZO6quRTvW85N6A/03iYU+AStWhdtBA=="
  }
}
provider "azurerm" {
    features {}
}

data "azurerm_resource_group" "default" {
    name = "tle1rg1"
}

resource "azurerm_storage_account" "thuanalerg1stg1" {
    name = "thuanalerg1stg1"
    resource_group_name = data.azurerm_resource_group.default.name
    location = data.azurerm_resource_group.default.location
    account_tier = "Standard"
    account_replication_type = "GRS"
}