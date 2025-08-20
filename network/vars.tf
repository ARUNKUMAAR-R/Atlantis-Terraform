variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = string
}

variable "subnet_names" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}

variable "resource_group_location" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
