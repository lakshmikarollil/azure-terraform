# MSI keys , add this details to backend.tf file if there is any change in value
variable "subscription_id" {
  description = "Subscription ID"
  default     = "f7e63dc3-d066-48af-9708-a993a3fe2720"
}
variable "client_id" {
  description = "App Id"
  default     = "e80305cf-9df5-4e7c-9713-1ecd5f4cc254"
}
variable "client_secret" {
  description = "Key for Service principal"
  default     = "giv.Bxo3ucbO-rUvXXZ2pq_4mHN9amb2GQ"
}
variable "tenant_id" {
  description = "Tenant ID from AD"
  default     = "77a74f24-9711-4ec1-b800-b75c60c21f3b"
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
  default     = "10.0.1.0/24"
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