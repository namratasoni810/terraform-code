variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default = "Namrata-RG"
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
  # default = [ "10.0.0.0/16" ]
}

# variable "dns_servers" {
#   description = "Custom DNS servers for the VNet"
#   type        = list(string)
#   default     = []
# }

# variable "subnets" {
#   description = "List of subnets to create"
#   type = list(object({
#     name             = string
#     address_prefixes = list(string)
#     nsg_id           = optional(string)
#   }))
# # }

# variable "tags" {
#   description = "Tags for resources"
#   type        = map(string)
#   default     = {}
# }
