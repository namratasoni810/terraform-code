variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name where subnet will be created"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

variable "delegation_name" {
  description = "Delegation name"
  type        = string
}

variable "service_delegation_name" {
  description = "Service delegation name"
  type        = string
}

variable "service_delegation_actions" {
  description = "Service delegation actions"
  type        = list(string)
}
