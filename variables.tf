#Input Variables
variable "aws_region" {
  description = "Region to deploy Infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Intance Type"
  type        = string
  default     = "t3.micro"
}

variable "instance_keypair" {
  description = "EC2 Key Pair associated with EC2 Instance"
  type        = string
  default     = "daxpo"
}

variable "instance_type_list" {
  description = "EC2 Instance Type"
  type        = list(string)
  default     = ["t3.mcro", "t3.small", "t3.large"]
}

variable "instance_type_map" {
  description = "EC2 Instance Type"
  type        = map(string)
  default = {
    "dev"  = "t3.micro"
    "qa"   = "t3.small"
    "prod" = "t3.large"
  }
}