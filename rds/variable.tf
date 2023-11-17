variable "private_subnet1" {
    type = string
    description = "private subnet 1"
}

variable "private_subnet2" {
    type = string
    description = "private subnet 2"
}

variable "storage" {
    type = number
    description = "allocated storage"
    default = 10
    
}
variable "db_name" {
    type = string
    description = "db name"
    default = "penteghinc-db"
}

variable "engine" {
    type = string
    description = "engine type"
    default = "mysql"
}

variable "engine_ver" {
    type = string
    description = "engine version"
    default = "5.7"
}

variable "instance_class" {
    type = string
    description = "db insatnce class"
    default = "db.t2.micro"
}

variable "username" {
    type = string
    description = "username"
    default = "admin"
}

variable "passwd" {
    type = string
    description = "password"
    default = "Admin12345"
}

variable "para_group_name" {
    type = string
    description = "parameter group name"
    default = "default.mysql5.7"
}

variable "tags" {
    type = map(string)
    description = "tags"
}

variable "vpc_id" {
    type = string
    description = "vpc id"
}

variable "vpc_cidr" {
    type = string
    description = "vpc cidr range"
}