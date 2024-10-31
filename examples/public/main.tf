resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "main" {
  name     = "rg-aztf-core-network"
  location = "westus3"
}

module "vwan" {

  source  = "Azure-Terraformer/vwan/azurerm"
  version = "1.0.0"

  resource_group_name   = azurerm_resource_group.main.name
  location              = azurerm_resource_group.main.location
  name                  = "aztf-core-network-${random_string.suffix.result}"
  primary_address_space = "10.8.0.0/23"

  additional_regions = {
    eastus2 = "10.8.2.0/23"
  }

}
