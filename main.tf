module "resource_group" {
  source     = "./modules/resource_group"
  resgrpname = var.resgrpname
  rglocation = var.rglocation
}

module "virtual_network" {
  source             = "./modules/virtual_network"
  resgrpname         = var.resgrpname
  rglocation         = var.rglocation
  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space
}

module "subnet" {
  source                  = "./modules/subnet"
  resgrpname              = var.resgrpname
  rglocation              = var.rglocation
  subnet_name             = var.subnet_name
  vnet_name               = var.vnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "security_group" {
  source     = "./modules/security_group"
  resgrpname = var.resgrpname
  rglocation = var.rglocation
  nsgname    = var.nsgname
}