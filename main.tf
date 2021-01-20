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

module "load_balancer"{
  source     = "./modules/load_balancer"
  resgrpname = var.resgrpname
  rglocation = var.rglocation
  lbname = var.lbname
  lbipname = var.lbipname
}

module "vmss"{
  source     = "./modules/vmss"
  resgrpname = var.resgrpname
  rglocation = var.rglocation
  vmss_name = var.vmss_name
  vmss_name_prefix = var.vmss_name_prefix 
  vmss_admin_username = var.vmss_admin_username 
  vmss_admin_password = var.vmss_admin_password 
  vmss_subnet_id = module.subnet.subnet_id
  vmss_lbaddrpool_id = module.load_balancer.lbaddrpool_id
  vmss_lbnatpool_id = module.load_balancer.lbnatpool_id
  
}