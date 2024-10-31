# Resource Group Name
variable "resource_group_name" {
  type        = string
  description = "Specifies the name of the resource group in which to create the resources."
}

# Location
variable "location" {
  type        = string
  description = "Specifies the Azure region where the resources will be deployed (e.g., 'East US')."
}

# Name
variable "name" {
  type        = string
  description = "Defines the base name to be used for the created resources, helping standardize naming conventions."
}

# Primary Address Prefix
variable "primary_address_prefix" {
  type        = string
  description = "Specifies the primary IP address prefix (CIDR format) to assign to the main subnet for resources."
}

# Additional Regions
variable "additional_regions" {
  type        = map(string)
  description = "A map of additional Azure regions where replicated resources will be deployed, with each key as the region name and value as the region-specific configuration."
}
