resource "azurerm_network_security_group" "tfnsg" {
  name                = var.nsgname                        
  location            = var.rglocation                    
  resource_group_name = var.resgrpname           
}