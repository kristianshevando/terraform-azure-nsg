resource "azurerm_network_security_group" "this" {
    name = "${var.resource_name_pattern}-nsg"
    location = "${var.nsg-location}"
    resource_group_name = "${var.nsg-resource_group}"
}

resource "azurerm_network_security_rule" "custom_rules" {
    count                       = "${length(var.nsg-custom_rules)}"
    name                        = "${lookup(var.nsg-custom_rules[count.index], "name")}"
    resource_group_name         = "${var.nsg-resource_group}"
    network_security_group_name = "${azurerm_network_security_group.this.name}"
    priority                    = "${lookup(var.nsg-custom_rules[count.index], "priority")}"
    direction                   = "${lookup(var.nsg-custom_rules[count.index], "direction")}"
    access                      = "${lookup(var.nsg-custom_rules[count.index], "access")}"
    protocol                    = "${lookup(var.nsg-custom_rules[count.index], "protocol")}"
    source_port_range           = "${lookup(var.nsg-custom_rules[count.index], "source_port_range")}"
    destination_port_range      = "${lookup(var.nsg-custom_rules[count.index], "destination_port_range")}"
    source_address_prefix       = "${lookup(var.nsg-custom_rules[count.index], "source_address_prefix")}"
    destination_address_prefix  = "${lookup(var.nsg-custom_rules[count.index], "destination_address_prefix")}"
}