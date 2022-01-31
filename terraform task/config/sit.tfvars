rgname            = "rg_ads_sit_001"
location          = "eastus"
pip_sku           = "Standard"
pip_sku_tier      = "Regional"
allocation_method = "Static"
pip_list = {
    pip1 = {
        pip_name                = "pip_ads_sit_001"
        availability_zone       = "1"
        ip_version              = "IPv4"
        idle_timeout_in_minutes = 5
    },
    pip2 = {
        pip_name                = "pip_ads_sit_002"
        availability_zone       = "2"
        ip_version              = "IPv4"
        idle_timeout_in_minutes = 21
    },
    pip3 = {
        pip_name                = "pip_ads_sit_003"
        availability_zone       = "Zone-Redundant"
        ip_version              = "IPv6"
        idle_timeout_in_minutes = 12
    },
    pip4 = {
        pip_name                = "pip_ads_sit_004"
        availability_zone       = "No-Zone"
        ip_version              = "IPv4"
        idle_timeout_in_minutes = 25
    }
}