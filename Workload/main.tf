module "vnet" {
  source= "../Module/vnet"
  # vnet_name = var.vnet_name
  resource_group_name = var.rg_name
  location = var.location
  # count = length(var.virtual_network_name)
  # vnet_name = var.virtual_network_name[count.index]
  # address_space = [var.vnet_address_space[count.index]]
  for_each = var.vnets
  vnet_name = each.value.name
  address_space = each.value.address_space

}

# module "subnet" {
#   source = "../Module/subnet"
#   resource_group_name =var.rg_name
#   #Count
# #   count = length(var.subnets)
# #   subnet_name =var.subnets[count.index].name
# #   address_prefixes = var.subnets[count.index].cidr
# #for eacch
#   # for_each = var.subnets

#   # subnet_name      = each.value.name
#   # address_prefixes = each.value.cidr
  
#   #for each multiple vnets and subnets
#   # count = length(var.subnet_names)
#   # subnet_name = var.subnet_names[count.index]
#   # address_prefixes = [var.subnet_address_prefixes[count.index]]
#   # vnet_name = var.vnet_name[count.index]

#   for_each = var.subnets
#   subnet_name = each.value.name
#   address_prefixes = each.value.cidr
#   vnet_name = each.value.vnet_name



# #   address_prefixes = var.address_prefixes
#   delegation_name = var.delegation_name
#   service_delegation_name = var.service_delegation_name
#   service_delegation_actions = var.service_delegation_actions
#   depends_on = [ module.vnet ]
# }
# module "storage_acc" {
#   source = "../Module/storage_acc"
#   rg_name = var.rg_name
#   location = var.location

#  for_each = var.storage_account
#  storage_name = each.value.name
#  account_tier = each.value.tier
# #  replication_type=each.value.replication_type

# # 


#   # replication_type = each.value.replication_type
#   # storage_name = var.storage_name
#   # location = var.location
#   # account_tier = var.account_tier
#   # account_replication_type = var.account_replication_type
#   # depends_on = [ module.vnet ]
# }
# module "container" {
#   source = "../Module/container"
#   for_each = var.containers
#   container_name = each.value.name
#   # storage_name = each.value.storage_account_name
#   storage_account_id = module.storage_acc[each.value.storage_account_key].storage_account_id

#   # depends_on = [ module.vnet ]
# }