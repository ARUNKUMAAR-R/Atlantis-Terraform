resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "vnet" {
  source              = "Azure/network/azurerm"
  version             = "5.3.0"
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  subnet_names        = var.subnet_names
  subnet_prefixes     = var.subnet_prefixes
  vnet_name           = var.vnet_name
  tags                = var.tags
  use_for_each        = true

  depends_on = [
    azurerm_resource_group.rg
  ]

}
