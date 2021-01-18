/*
terraform {
  backend "azurerm" {
    resource_group_name = "resgroup-demo"
    storage_account_name = "terraformstorage"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
    use_msi              = true
    subscription_id      = "f7e63dc3-d066-48af-9708-a993a3fe2720"
    tenant_id            = "77a74f24-9711-4ec1-b800-b75c60c21f3b"
  }
}
*/