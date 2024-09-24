resource "aws_instance" "db" {

    ami = "ami-0ebfd941bbafe70c6"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    key_name = "virginia-key"

    tags = {
        Name = "db"
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allow inboud and outbound traffic"

    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"] 
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "allow_ssh"
      createdBy = "sivakumar"
    }
  
}