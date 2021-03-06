
#Deploy WebServer

resource "aws_instance" "web_sever" {
    ami = data.aws_ami.amzlinux2.id
    cpu_core_count = var.cpu_core_count
    cpu_threads_per_core = var.cpu_threads_per_core
    aws_region = var.aws_region
    environment = var.enviroment
    instance_type = var.instance_type_list[1]
    key_name = var.instance_keypair
    private_ip = var.private_ip
    availability_zone = var.availability_zone
    subnet_id = var.subnet_id
    hibernation = var.hibernation
    monitoring = var.monitoring
    addtional_tags = var.addtional_tags
}

  tags = {
     Name = var.tags
   }
}

#Retrieve the latest Linux2 OS AMI ID for WebServer

data "aws_ami" "amzlinux2" {
  most_recent = true
  owners      = ["amazon"]
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

#Creat EBS Volume
resource "aws_ebs_volume" "daxpoebs" {
  availability_zone = var.availability_zone
  encrypted = true
  size              = 40

  tags = {
    Name = "DaXPO EBS"
  }
}
#Attach EBS Volume to instnace
resource "aws_volume_attachment" "daxpoebs" {
     device_name = "/dev/sdh"
     volume_id   = aws_ebs_volume.daxpoebs.id
     instance_id = aws_instance.Daxpoinstance.id
}
#Create Cloudwatch Metric
resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {
  alarm_name = "cpu-utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = "2"
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
  period = "120" #seconds
  statistic = "Average"
  threshold = "80"
  alarm_description = "This metric will monitor ec2 CPU Utilization"
   insufficient_data_actions = []

  dimensions = {
    
    InstanceId = aws_instance.Daxpoinstance.id

  }
}
