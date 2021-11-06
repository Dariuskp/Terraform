output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.Daxpoinstance.public_ip
}

