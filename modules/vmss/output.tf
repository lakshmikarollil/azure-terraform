output "vmss_id" {
  description = "vmss id"
  value       = azurerm_linux_virtual_machine_scale_set.main.id
}