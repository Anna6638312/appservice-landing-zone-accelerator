variable "application_name" {
  type        = string
  description = "The name of your application"
}

variable "resource_group" {
  type        = string
  description = "The name of the resource group where all resources in this example should be created."
  default     = "app-svc-secure-baseline-rg"
}

variable "environment" {
  type        = string
  description = "The environment (dev, qa, staging, prod)"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "The Azure region where all resources in this example should be created"
  default     = "westeurope"
}

variable "tenant_id" {
  type        = string
  description = "The Azure AD tenant ID for the identities"
}

variable "aad_admin_group_object_id" {
  type        = string
  description = "The object ID of the Azure AD group that should be granted SQL Admin permissions to the SQL Server"
}

variable "aad_admin_group_name" {
  type        = string
  description = "The name of the Azure AD group that should be granted SQL Admin permissions to the SQL Server"
}

variable "vnet_cidr" {
  type        = list(string)
  description = "The CIDR block for the virtual network."
}

variable "appsvc_int_subnet_cidr" {
  type        = list(string)
  description = "The CIDR block for the subnet."
}

variable "front_door_subnet_cidr" {
  type        = list(string)
  description = "The CIDR block for the subnet."
}

variable "devops_subnet_cidr" {
  type        = list(string)
  description = "The CIDR block for the subnet."
}

variable "private_link_subnet_cidr" {
  type        = list(string)
  description = "The CIDR block for the subnet."
}

variable "vm_admin_username" {
  type = string
  description = "The username for the VM admin account."
}

variable "vm_admin_password" {
  type = string
  description = "The password for the VM admin account."
}

variable "vm_aad_admin_username" {
  type = string
  description = "The Azure AD username for the VM admin account."
}

variable "enable_waf" {
  type        = bool
  description = "Enable WAF in Azure Front Door"
  default     = true 
}