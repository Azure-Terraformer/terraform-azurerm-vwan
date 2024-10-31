# terraform-azurerm-vwan

Terraform Test Command

https://developer.hashicorp.com/terraform/cli/commands/test
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.66.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.66.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_hub.additional_regions](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub) | resource |
| [azurerm_virtual_hub.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub) | resource |
| [azurerm_virtual_wan.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_wan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_regions"></a> [additional\_regions](#input\_additional\_regions) | A map of additional Azure regions where Virtual Hubs will be deployed, with each key as the region code and value as the region-specific address space. | `map(string)` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Specifies the Azure region where the resources will be deployed (e.g., 'East US'). | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Defines the base name to be used for the created resources, helping standardize naming conventions. | `string` | n/a | yes |
| <a name="input_primary_address_prefix"></a> [primary\_address\_prefix](#input\_primary\_address\_prefix) | Specifies the primary IP address prefix (CIDR format) to assign to the primary Virtual Hub. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the name of the resource group in which to create the resources. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Virtual WAN ID |
| <a name="output_primary_virtual_hub_id"></a> [primary\_virtual\_hub\_id](#output\_primary\_virtual\_hub\_id) | Primary Virtual Hub ID |
<!-- END_TF_DOCS -->