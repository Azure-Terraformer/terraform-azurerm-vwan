output "id" {
  value       = azurerm_virtual_wan.main.id
  description = "Virtual WAN ID"
}
output "primary_virtual_hub_id" {
  value       = azurerm_virtual_hub.primary.id
  description = "Primary Virtual Hub ID"
}
