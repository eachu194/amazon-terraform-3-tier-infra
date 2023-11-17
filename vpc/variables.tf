variable "vpc_cidr" {
    type = string
    description = "vpc cidr range"
    default = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
    type = string
    description = "public subnet1 cidr range"
    default = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
    type = string
    description = "public subnet2 cidr range"
    default = "10.0.2.0/24"
}

variable "private_subnet1_cidr" {
    type = string
    description = "private subnet1 cidr range"
    default = "10.0.3.0/24"
}

variable "private_subnet2_cidr" {
    type = string
    description = "private subnet2 cidr range"
    default = "10.0.4.0/24"
}

variable "availability_zones" {
    type = list(string)
    description = "list of availability zone"
    default = [ "us-east-1a", "us-east-1b" ]
}

variable "enable_public_ip" {
    type = string
    description = "enable public ip address"
    default = true

}
variable "tags" {
    type = map
    description = "tags"
}