resource "azurerm_public_ip" "pip" {
  name                    = var.pip_name
  resource_group_name     = var.rgname
  location                = var.location
  sku                     = var.pip_sku
  sku_tier                = var.pip_sku_tier
  allocation_method       = var.allocation_method
  availability_zone       = var.availability_zone
  ip_version              = var.ip_version
  idle_timeout_in_minutes = var.idle_timeout_in_minutes

  tags = {
    environment = "deV"
    department  = "IT"
  }
}