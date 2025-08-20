vnet_name               = "vnet1"
resource_group_name     = "rg112"
resource_group_location = "japaneast"
address_space           = "10.0.0.0/16"
subnet_names            = ["web", "app", "db"]
subnet_prefixes         = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
tags = {
  environment = "dev"
}
