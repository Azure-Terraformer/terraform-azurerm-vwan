resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}-${random_string.suffix.result}"
  location = var.location
}

module "vwan" {

  source = "../../"

  resource_group_name    = azurerm_resource_group.main.name
  location               = azurerm_resource_group.main.location
  name                   = "${var.application_name}-${random_string.suffix.result}"
  primary_address_prefix = var.address_space
  additional_regions     = var.additional_regions

}
