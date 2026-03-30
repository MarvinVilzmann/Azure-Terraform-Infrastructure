output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}

output "vm_names" {
  value = azurerm_linux_virtual_machine.vm[*].name
}

output "load_balancer_public_ip" {
  value = azurerm_public_ip.lb_pip.ip_address
}

output "ssh_vm1" {
  value = "ssh -i  ${var.ssh_key_path} ${var.admin_username}@${azurerm_public_ip.lb_pip.ip_address} -p 50001"
}

output "ssh_vm2" {
  value = "ssh -i ${var.ssh_key_path} ${var.admin_username}@${azurerm_public_ip.lb_pip.ip_address} -p 50002"
}