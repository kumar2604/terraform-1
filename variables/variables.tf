variable "ami_id" {
    type = string
    default = "ami-0ebfd941bbafe70c6"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "ssh_port" {
    default = "22"
}

variable "protocol" {
    default = "tcp"
}

variable "allow_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"] 
}