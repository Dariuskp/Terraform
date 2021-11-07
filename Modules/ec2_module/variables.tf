variable "aws_region" {
    description = "Region to deploy Infrastructure"
    type = string 
    default = "us-east-1"
}

variable "instance_type" {
    description = "EC2 Intance Type"
    type = string 
    default = "t3.micro"
}

variable "instance_keypair" {
    description = "EC2 Key Pair associated with EC2 Instance"
    type = string
    default = "daxpo"
}