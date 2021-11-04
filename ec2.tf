#Provision EC2 Instance 
#Automating creating Apache server 
resource "aws_instance" "ApacheWebServer" {
  ami = "ami-01cc34ab2709337aa"
  instance_type = "t3.micro"
  user_data = file("${path.module}/apacheserver.sh")
  tags = {
    "Name" = "Apache Web Server"
  }
}

data "local_file" "apacheserver" {
  filename = "${path.module}/apacheserver.sh"
}