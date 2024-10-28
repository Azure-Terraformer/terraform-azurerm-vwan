variable "application_name" {
  type = string
}
variable "location" {
  type = string
}
variable "address_space" {
  type = string
}
variable "additional_regions" {
  type = map(string)
}
