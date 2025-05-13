resource "aws_instance" "roboshop"{
    ami = var.ami_id
    instance_type = var.instance_type
    security_group = [aws_security_group.allow_all.name]
    cidr_blocks = var.cidr_blocks

    tags = var.tags
}