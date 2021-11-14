#SSH Traffic Security Group
resource "aws_security_group" "vpc_ssh" {
  name        = "vpc-ssh"
  description = "DaXPO SSH"
  vpc_id = aws_vpc.daxpo-vpc.id 

  ingress = [
    {
      description      = "Allow Port 22"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.daxpo-vpc.cidr_block]
    }
  ]
  egress = [
    {
      description      = "Allow IP and Ports outbound"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
  tags = {
    Name = "vpc-ssh"
  }
}

#Web Traffic
resource "aws_security_group" "vpc_web" {
  name        = "vpc-web"
  description = "DaXPO Site"
  vpc_id = aws_vpc.daxpo-vpc.id 

  ingress = [
    {
      description      = "Allow Port 80"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.daxpo-vpc.cidr_block]
    }
  ]
  egress = [
    {
      description      = "Allow IP and Ports outbound"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
  tags = {
    Name = "vpc-web"
  }
}
