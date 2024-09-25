variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
  
}

variable "ami_id" {
    default = "ami-0ebfd941bbafe70c6"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "key_name" {
    default = "virginia-key"
}

variable "sg_name" {
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
    default = [ "0.0.0.0/0" ]
  
}