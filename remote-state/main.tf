resource "aws_instance" "db" {

    ami = var.ami_id
    vpc_security_group_ids = ["sg-0bda9cb22b20cde4f"]
    instance_type = var.instance_type

    tags = {
        Name = "db"
    }
}