resource "azurerm_subnet" "azurerm_subnettg" {
  name                 = "AzureFirewallSubnet" 
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${var.virtual_network_name}"
  address_prefixes     = "${var.address_prefixes}"
}

resource "azurerm_firewall_policy" "azurerm_firewall_policytg" {
  name                = local.firewall_policy_name
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}" 
}

resource "azurerm_firewall" "example" {
  name                = local.firewall_name
  location            = "${var.location}" 
  resource_group_name = "${var.resource_group_name}"
  sku_name            = "${var.sku_name}"
  sku_tier            = "${var.sku_tier}"

  ip_configuration {
    name                 = local.ipconfig_name
    subnet_id            = "${var.subnet_id}"
    public_ip_address_id = "${var.public_ip_address_id}"
  }
}