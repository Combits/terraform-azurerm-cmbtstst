locals {
  tags = {
    "Project"     = var.project
    "Owner"       = var.owner
    "Environment" = var.environment
  }
}
#resource "azurerm_resource_group" "rg" {
#  name     = "rg_terraform_sandbox"
#  location = "westeurope"
#}
resource "azurerm_storage_account" "cmbtstst" {
  resource_group_name           = var.resource_group_name
  name                          = var.storage_account_name
  location                      = var.location
  account_replication_type      = var.environment == "Production" ? "GRS" : "LRS"
  account_tier                  = "Standard"
  public_network_access_enabled = false
  tags                          = local.tags
}