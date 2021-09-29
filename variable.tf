#These are the variables I wrote that are being referenced by 1 aws vpc resource

variable "vpc-cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string
}

variable "public-subnet-1-cidr" {
    default = "10.0.0.0/24"
    description = "Public Subent 1 CIDR Block"
    type = string
}

variable "public-subnet-2-cidr" {
    default = "10.0.1.0/24"
    description = "Public Subent 2 CIDR Block"
    type = string
}

variable "private-subnet-1-cidr" {
    default = "10.0.2.0/24"
    description = "Private Subent 1 CIDR Block"
    type = string
}

variable "private-subnet-2-cidr" {
    default = "10.0.3.0/24"
    description = "Private Subent 2 CIDR Block"
    type = string
}

variable "private-subnet-3-cidr" {
    default = "10.0.4.0/24"
    description = "Private Subent 3 CIDR Block"
    type = string
}

variable "private-subnet-4-cidr" {
    default = "10.0.5.0/24"
    description = "Private Subent 4 CIDR Block"
    type = string
}
