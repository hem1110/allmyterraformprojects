resource "azurerm_mssql_server" "sqlserver" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.main.name
  location                     = azurerm_resource_group.main.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_password

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
    project     = "cloud-infra"
  }
}

resource "azurerm_mssql_database" "sqldb" {
  name           = var.database_name
  server_id      = azurerm_mssql_server.sqlserver.id
  sku_name       = "Basic"
}