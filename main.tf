resource "null_resource" "vm_manage" {
  provisioner "local-exec" {
    when = create
    command = "az vm start --resource-group denmark-east-rg --name workstation"
  }
  provisioner "local-exec" {
    when = destroy
    command = "az vm stop --resource-group denmark-east-rg --name workstation; az vm deallocate --resource-group denmark-east-rg --name workstation"
  }
}