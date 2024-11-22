variable "repository" {
  type        = string
  default     = "https://github.com/SyncArcs/terraform-azure-nat-gateway"
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "managedby" {
  type        = string
  default     = "SyncArcs"
  description = "ManagedBy, eg 'SyncArcs'."
}

variable "location" {
  description = "Azure region to use"
  type        = string
  default     = ""
}

variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  description = "Project environment"
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "Name of the resource group to use"
  type        = string
  default     = ""
}

variable "public_ip_zones" {
  description = "Public ip Zones to configure."
  type        = list(string)
  default     = null
}

variable "public_ip_ids" {
  description = "List of public ips to use. Create one ip if not provided"
  type        = list(string)
  default     = []
}

variable "create_public_ip" {
  description = "Should we create a public IP or not?"
  type        = bool
  default     = true
}

variable "nat_gateway_idle_timeout" {
  description = "Idle timeout configuration in minutes for Nat Gateway"
  type        = number
  default     = 4
}

variable "subnet_ids" {
  description = "Ids of subnets to associate with the Nat Gateway"
  type        = string
  default     = ""
}

variable "create_nat_gateway" {
  type    = bool
  default = true
}

variable "azurerm_subnet_nat_gateway_association_enabled" {
  type    = bool
  default = true
}

variable "enabled" {
  type    = bool
  default = true
}