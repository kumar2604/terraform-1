variable "ami_id" {
    type = string
    default = "ami-0ebfd941bbafe70c6"
  
}

variable "instance_type" {
    default = "t3.micro"
}

variable "instance_name" {
    type = string
    default = "db"
  
}