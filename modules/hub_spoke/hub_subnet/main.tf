resource "azurerm_subnet" "azurerm_subnettg_hub" {    
    name                 = local.name
    resource_group_name  = "${var.resource_group_name}"
    virtual_network_name = "${var.virtual_network_name}"
    address_prefixes     = "${var.address_prefixes}"
}

resource "azurerm_subnet" "hub-snet-gateway" {
  name                 = "GatewaySubnet"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = azurerm_virtual_network.azurerm_subnettg_hub.name
  address_prefixes     = ["10.0.4.0/27"]
}
resource "azurerm_subnet" "bastion-subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = azurerm_virtual_network.azurerm_subnettg_hub.name
  address_prefixes     = ["10.0.3.0/26"]
}
resource "azurerm_subnet" "firewall-subnet" {
  name                 = "AzureFirewallSubnet" ##can also be AzureFirewallManagementSubnet
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = azurerm_virtual_network.azurerm_subnettg_hub.name
  address_prefixes     = ["10.0.5.0/26"]
}