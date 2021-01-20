# MSI keys , add this details to backend.tf file if there is any change in value
variable "subscription_id" {
  description = "Subscription ID"
  default     = "de7365e2-8329-48fc-8273-4ab1574e6b4b"
}
variable "client_id" {
  description = "App Id"
  default     = "36b5e80b-bebc-4295-b8f1-59e2221d4112"
}
variable "client_secret" {
  description = "Key for Service principal"
  default     = "X14X.K-Xs.CoI8ik.L.ev-upx-R4aVE7-m"
}
variable "tenant_id" {
  description = "Tenant ID from AD"
  default     = "687f51c3-0c5d-4905-84f8-97c683a5b9d1"
}


# Resource Group variables , add resgrpname to backend.tf file if there is any change in value
variable "resgrpname" {
  description = "Resource Group"
  default     = "resgroup-demo"
}
variable "rglocation" {
  description = "Location"
  default     = "West Europe"
}


# VNet variables
variable "vnet_name" {
  description = "Virtual network name"
  default     = "TFVnet"
}
variable "vnet_address_space" {
  description = "VNet address space"
  default     = ["10.0.0.0/16"]
}


#Subnet variables
variable "subnet_name" {
  description = "Subnet name"
  default     = "tfsubnet"
}
variable "subnet_address_prefixes" {
  description = "subnet address prefixes"
  default     = ["10.0.1.0/24"]
}

# Network security group variables
variable "nsgname" {
  description = "Network security group name "
  default     = "TFNSG"
}


#Load balancer variables
variable "lbipname" {
  description = "Load balancer IP name"
  default ="TFPublicIPForLB"
}
variable "lbname" {
  description = "Load balancer name"
  default="TFLoadBalancer"
}

# VMSS variables
variable "vmss_name" {
  description = "virtual machine scaleset name"
  default = "tf-vmss"
}
variable "vmss_name_prefix" {
  description = "virtual machine name prefix"
  default ="tf-vmss"
}
variable "vmss_admin_username" {
  description = "virtual machine Admin user name"
  default = "adminuser"
}
variable "vmss_admin_password" {
  description = "virtual machine Admin user password"
  default = "P@ssw0rd1234!"
}