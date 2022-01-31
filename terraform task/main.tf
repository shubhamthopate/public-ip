resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

module "pip_module" {
    source                  = "./modules/env-module"
    rgname                  = azurerm_resource_group.rg.name
    location                = azurerm_resource_group.rg.location
    for_each                = var.pip_list
    pip_sku                 = var.pip_sku
    pip_sku_tier            = var.pip_sku_tier
    allocation_method       = var.allocation_method
    availability_zone       = each.value.availability_zone
    ip_version              = each.value.ip_version
    idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
    pip_name                = each.value.pip_name
  
  
}