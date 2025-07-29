
variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "client_id" {
  type        = string
  description = "Azure service principal client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure service principal client secret"
  sensitive   = true
}

variable "resource_group_name" {
  default     = "demo-rg"
  description = "Name of the resource group"
}

variable "location" {
  default     = "East US"
  description = "Azure region"
}

variable "sql_server_name" {
  description = "Name of the Azure SQL Server"
  type        = string
  default     = "jsrsqlserver123"
}

variable "sql_admin_user" {
  description = "SQL Server administrator username"
  type        = string
  default     = "sqladminuser"
}

variable "sql_password" {
  description = "SQL Server administrator password"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "Name of the Azure SQL Database"
  type        = string
  default     = "mydatabase"
}

variable "vnet_name" {
  default     = "vnet-main"
  description = "Name of the virtual network"
}

variable "webapp_subnet_name" {
  default     = "webapp-subnet"
  description = "Subnet name for web app"
}

variable "db_subnet_name" {
  default     = "db-subnet"
  description = "Subnet name for database"
}

variable "keyvault_subnet_name" {
  default     = "keyvault-subnet"
  description = "Subnet name for key vault"
}