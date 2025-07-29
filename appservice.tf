resource "azurerm_app_service_plan" "webapp_plan" {
  name                = "jsr-appservice-plan"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  sku {
    tier = "PremiumV2"
    size = "P1v2"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "jsr-webapp-demo"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.webapp_plan.id

  site_config {
    always_on = true
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}

resource "azurerm_app_service_virtual_network_swift_connection" "webapp_vnet_integration" {
  app_service_id = azurerm_app_service.webapp.id
  subnet_id      = azurerm_subnet.webapp.id
}
