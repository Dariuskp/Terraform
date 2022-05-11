#Deploy WebServer
resource "aws_instance" "web_sever" {
    ami = data.aws_ami.amzlinux2.id
    cpu_core_count = var.cpu_core_count
    cpu_threads_per_core = var.cpu_threads_per_core
    aws_region = var.aws_region
    enviroment = var.enviroment
    instance_type = var.instance_type_list[1]
    key_name = var.instance_keypair
    private_ip = var.private_ip
    availability_zone = var.availability_zone
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids[0]
    monitoring = var.monitoring
    hibernation = var.hibernation
    monitoring = var.monitoring
    addtional_tags = var.addtional_tags

    default_tags {
    tags = {
      Environment = var.enviroment
    }
  }
}


#Retrieve the latest Linux2 OS AMI ID for WebServer
data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}