terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "vinayak_RG"
    storage_account_name = "testterraform10"
    container_name       = "terraform"
    key                  = "8GDhWZrtvWhUycaq1FdNZ5qNDvPn+xwo+Jg2ybzHXp/HeKvQwjfjwk3/blmYRq+AumGsut/qdn3Z+ASti6eJlg=="
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
