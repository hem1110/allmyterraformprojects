output "resource_group" {
  value = azurerm_resource_group.main.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "webapp_subnet" {
  value = azurerm_subnet.webapp.name
}

output "db_subnet" {
  value = azurerm_subnet.db.name
}

output "keyvault_subnet" {
  value = azurerm_subnet.keyvault.name
}

output "key_vault_uri" {
  value = azurerm_key_vault.kv.vault_uri
}

output "sql_server_name" {
  value = azurerm_mssql_server.sqlserver.name
}

output "sql_database_name" {
  value = azurerm_mssql_database.sqldb.name
}
