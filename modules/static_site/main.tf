resource "azurerm_static_site" "azurerm_static_sitetg" {
  name                = local.name
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  sku_size            = "${var.sku_size}"
}