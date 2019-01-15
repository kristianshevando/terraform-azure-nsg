# Network Security Group name. |
output "nsg-name" {
    value = "${azurerm_network_security_group.this.name}"
}

# Network Security Group id. |
output "nsg-id" {
    value = "${azurerm_network_security_group.this.id}"
}