# Resource Group
rg_name  = "Namrata-Soni-RG"
location = "eastus2"

# Virtual Network
# vnet_name = "hub-vnet"
# address_space = [
#   "10.0.0.0/16"
# ]

# Subnet For count
# subnets = [
#   {
#     name = "app-subnet"
#     cidr = ["10.0.1.0/24"]
#   },
#   {
#     name = "db-subnet"
#     cidr = ["10.0.2.0/24"]
#   }
# ]
#----------------------------------------------------
#subnet using for each
# subnets = {
#   app = {
#     name = "app-subnet"
#     cidr = ["10.0.1.0/24"]
#   }
#   db = {
#     name = "db-subnet"
#     cidr = ["10.0.2.0/24"]
#   }
# }
#-----------------------------------------------------
#multiple subnets in multiple vnets using count
# virtual_network_name =["hub-vnet","spoke-vnet"]
# vnet_address_space = ["10.0.0.0/16","10.1.0.0/16"]
# #multiple subnets

# vnet_name = ["hub-vnet","hub-vnet", "spoke-vnet"]
# subnet_names = ["app1",  "app2", "db1"]
# subnet_address_prefixes = ["10.0.0.0/24", "10.0.1.0/24", "10.1.1.0/24"]
#-----------------------------------------------------
#multiple subnets in multiple vnets using for each
vnets={
  vnet1={
    name = "hub-vnet"
    address_space = ["10.0.0.0/16"]
  }
  vnet2={
    name = "spoke-vnet"
    address_space = ["10.1.0.0/16"]
  }
}

subnets={
  subnet1={
    vnet_name = "hub-vnet"
    name = "app1"
    cidr = ["10.0.0.0/24"]
  }
  subnet2={
    vnet_name = "hub-vnet"
    name = "app2"
    cidr = ["10.0.1.0/24"]
  }
  subnet3={
    vnet_name = "spoke-vnet"
    name = "db1"
    cidr = ["10.1.1.0/24"]
  } 
}
#-----------------------------------------------------



# Subnet Delegation (ACI / AKS etc.)
delegation_name = "delegation"

service_delegation_name = "Microsoft.ContainerInstance/containerGroups"

service_delegation_actions = [
  "Microsoft.Network/virtualNetworks/subnets/join/action",
  "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"
]

# Storage Account
# storage_name = "namratastorage01"
# account_tier = "Standard"
# account_replication_type = "LRS"

storage_account={
  str1={
    name = "namratastorage01"
    tier = "Standard"
    replication_type = "LRS"
  }
str2={
    name = "namratastorage02"
    tier = "Standard"
    replication_type = "LRS"
  }
}

containers={
  container1={
    name = "container1"
    storage_account_key = "str1"
  }
  container2={
    name = "container2"
    storage_account_key = "str2"
  }
}
# Tags
# tags = {
#   environment = "dev-branch feature1"
#   owner       = "Namrata"
#   project     = "hub-spoke"
# }
