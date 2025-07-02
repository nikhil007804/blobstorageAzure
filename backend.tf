terraform {
  backend "azurerm" {
    resource_group_name   = "demo-rg"
    storage_account_name  = "prathyushatfstate1234"
    container_name        = "tfstate"
    key                   = "blob-container.terraform.tfstate"
  }
}
