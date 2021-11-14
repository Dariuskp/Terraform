#Provision EC2 Instance 
resource "aws_instance" "Daxpoinstance" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type_list[2]
  key_name = var.instance_keypair
  count    = 2

  tags = {
    "Name" = "DaXPO Instance-${count.index}"
  }
}
