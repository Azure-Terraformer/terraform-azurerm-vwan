resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}"
  location = var.location
}

module "vwan" {

  source = "../../"

  resource_group_name    = azurerm_resource_group.main.name
  location               = azurerm_resource_group.main.location
  name                   = var.application_name
  primary_address_prefix = var.address_space
  additional_regions     = var.additional_regions

}
