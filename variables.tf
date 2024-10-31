variable "resource_group_name" {
  type        = string
  description = "Specifies the name of the resource group in which to create the resources."
}
variable "location" {
  type        = string
  description = "Specifies the Azure region where the resources will be deployed (e.g., 'East US')."
}
variable "name" {
  type        = string
  description = "Defines the base name to be used for the created resources, helping standardize naming conventions."
}
variable "primary_address_space" {
  type        = string
  description = "Specifies the primary IP address prefix (CIDR format) to assign to the primary Virtual Hub."
}
variable "additional_regions" {
  type        = map(string)
  description = "A map of additional Azure regions where Virtual Hubs will be deployed, with each key as the region code and value as the region-specific address space."
}
