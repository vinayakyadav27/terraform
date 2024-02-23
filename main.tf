terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "Vinayak_rg"
    storage_account_name = "githubactionterraform123"
    container_name       = "terraform"
    key                  = "CfZgLmhxmuVzyL1A6iFEdBU0xHlDzjpefdJ+z+nhf9aystBR7816lxSFrax4GB9bEESukhULGAq4+AStGoFt7A=="
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
