variable "azure_fw_name" {
  description = "The name of the Azure Firewall where the new NAT Collection Rule should be created."
  type        = string
}

variable "fw_resource_group_name" {
  description = "The name of the Resource Group where the Azure Firewall resides."
  type        = string
}

variable "nat_collection_name" {
  description = "The name to assign to the new NAT Collection Rule."
  type        = string
}

variable "nat_collection_priority" {
  description = "The priority in the NAT Rule base for the new NAT Collection Rule."
  type        = string
}

variable "nat_collection_action" {
  description = "The type of NAT to use for the new NAT rule collection. Options are DNAT or SNAT."
  type        = string
}

variable "nat_rule" {
  description = "description"
}