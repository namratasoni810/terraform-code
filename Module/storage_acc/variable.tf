variable "rg_name" {
  type = string
}
# variable "location" {
#   type = string

#   validation {
#     condition     = contains(["eastus", "centralindia"], lower(var.location))
#     error_message = "Location must be either eastus or centralindia."
#   }
# }

variable "location" {
  type = string
}

variable "storage_name" {
  type = string
}

variable "account_tier" {
  description = "Standard/Premiumm"
  type = string
  
}

variable "account_replication_type" {
  description = "Replication type"
  type = string
  default = "ZRS"
}