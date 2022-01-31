variable "rgname" {}

variable "location" {}

variable "pip_sku" {}

variable "pip_sku_tier" {}

variable "allocation_method" {}

variable "pip_list" {
    type = map(object({
        pip_name = string
        availability_zone = string
        ip_version = string
        idle_timeout_in_minutes = number
    }))
}





