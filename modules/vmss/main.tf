resource "azurerm_linux_virtual_machine_scale_set" "main" {
  name                            = var.vmss_name
  resource_group_name             = var.resgrpname
  location                        = var.rglocation

  sku                             = "Standard_F2"
  instances                       = 1
  
  computer_name_prefix   = var.vmss_name_prefix
  admin_username         = var.vmss_admin_username
  admin_password         = var.vmss_admin_password
  custom_data            = filebase64("azure-user-data.sh")

  os_profile_linux_config {
    disable_password_authentication = false

    ssh_keys {
      #D:\projects\internal\assignment\terraform assignment\.ssh
      path     = "/home/myadmin/.ssh/authorized_keys"
      key_data = file("~/.ssh/id_rsa.pub")
    }
  }


  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  network_interface {
    name    = "example"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = var.vmss_subnet_id
      load_balancer_backend_address_pool_ids = var.vmss_lbaddrpool_id
      load_balancer_inbound_nat_rules_ids    = var.vmss_lbnatpool_id
    }
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}