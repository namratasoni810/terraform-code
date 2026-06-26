variable "rg_name" {
  type    = string
  default = "Namrata-RG"
}
variable "location" {
  type = string
}

#---------------------------------------
#Count
# variable "subnets" {
#   type = list(object({
#     name = string
#     cidr = list(string)
#   }))
# }
#----------------------------
#for each :- map or set
# variable "subnets" {
#   type = map(object({
#     name = string
#     cidr = list(string)
#   }))
# }
##multiple subnets in multiple vnets using count
# variable "virtual_network_name" {
#   type = list(string)
# }
# variable "vnet_name" {
#   type = list(string)
# }
# variable "vnet_address_space" {
#   type = list(string)
# }

# variable "subnet_names" {
#   type = list(string)
# }
#----------------------------------------------------------
#multiple subnets in multiple vnets using for each
variable "vnets" {
type = map(object({
  name = string
  address_space = list(string)
}))
}
variable "subnets" {
type = map(object({
  name = string
  cidr = list(string)
  vnet_name = string
}))
}

variable "storage_account" {
  type = map(object({
    name = string
    tier = string
    replication_type = string
  }))
}

variable "containers" {
  type = map(object({
    name = string
    storage_account_key = string
  }))
}
# variable "subnet_address_prefixes" {
#   type = list(string)
# }

variable "delegation_name" {
  type = string
}
variable "service_delegation_name" {
  type = string
}
variable "service_delegation_actions" {
  type = list(string)
}
# variable "storage_name" {
#   type = string
# }
# variable "account_tier" {
#   type = string
# }
# variable "account_replication_type" {
#   type = string
# }
# variable "address_space" {
#   type = list(string)
# }
# variable "tags" {
#   type = map(string)
# }
