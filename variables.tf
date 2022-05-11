variable "instance_name" {
    description = "Name of the Server"
    type = string
    default = "WebServer1"
}

variable "aws_region" {
    description = "Region to deploy server"
    type = string
    default = "us-east-1"
}

variable "hibernation" {
  description = "If true, the launched EC2 instance will support hibernation"
  type        = bool
  default     = false
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = true
}

variable "instance_keypair" {
  description = "EC2 Key Pair associated with EC2 Instance"
  type        = string
  default     = "daxpo"
}

variable "instance_type_list" {
  description = "EC2 Instance Type"
  type        = list(string)
  default     = ["t2.mcro", "t2.small", "t2.large"]
}

variable "instance_type_map" {
  description = "EC2 Instance Type"
  type        = map(string)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t2.small"
    "prod" = "t2.large"
  }

variable "private_ip" {
    description = "PrivateIP to attach to Instance"
    type = string
    default = 10.0.0.1
}


variable  "associate_public_ip_address" {
    description = "Decide whether or not to associate ip address" 
    type = bool 
    default = false
}

variable  "availability_zone" {
    description = "AZ to launch instance"
    type = string 
    default = "us-east-1a"
}

variable  "enviroment" {
    description = "Enviroment to launch instance"
    type = string 
    default = "dev"
}

variable  "cpu_core_count" {
    description = "CPU Count of Instance"
    type = number
    default = 2
}

variable "cpu_threads_per_core" {
  description = "CPU threads per core for instance"
  type        = number
  default     = 1
}

 variable "subnet_id" {
    description = "SubnetID for Instance"
    type = string 
    default = "subnet-0fa9766142376008f"
}

variable "vpc_security_group_ids" {
    description = "SecurityGroup for Instance"
    type = list(string) 
    default = ["sg-0d12f6eb13f7b0098"]
}

variable "tags" {
    description = "Tag to assign to instance"
    type = string 
    default = "AlvariaDev"
}

variable "addtional_tags" {
    description = "Addtional Tag to assign to instance"
    type = string 
    default = "PlatformEngineering"
}


