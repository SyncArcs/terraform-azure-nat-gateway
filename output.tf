output "id" {
  value       = join("", azurerm_nat_gateway.natgw[*].id)
  description = "The ID of the NAT Gateway."
}
output "resource_guid" {
  value       = join("", azurerm_nat_gateway.natgw[*].id)
  description = "The resource GUID property of the NAT Gateway."
}

output "pip_id" {
  value       = join("", azurerm_public_ip.pip[*].id)
  description = "The ID of this Public IP."
}

output "ip_address" {
  value       = join("", azurerm_public_ip.pip[*].ip_address)
  description = "The IP address value that was allocated."
}