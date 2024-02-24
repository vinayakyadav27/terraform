terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "vinayak_RG"
    storage_account_name = "testterraform10"
    container_name       = "terraform"
    key                  = "BM1eVaF8/fw1ynxCJ/anqEuOMtCN2SHljaMf+ZoVcUUSfItJKg5divt/8SAnvvz0pOj7ZBi6pL7D+ASt24od1Q=="
  }
}
 
provider "azurerm" {
  features {}
}
 
data "azurerm_client_config" "current" {}
 
resource "azurerm_resource_group" "tamops" {
  name     = "github-terraform-example"
  location = "uksouth"
}
