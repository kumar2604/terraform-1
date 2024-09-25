resource "aws_instance" "db" {
    count = length(var.instance_names)
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = "allow inboud and outbound traffic"

    ingress {
        from_port = var.ssh_port
        to_port   = var.ssh_port
        protocol  = var.protocol
        cidr_blocks = var.allow_cidr
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = var.allow_cidr
    }

    tags = {
      Name = "allow_ssh"
      createdBy = "sivakumar"
    }
  
}