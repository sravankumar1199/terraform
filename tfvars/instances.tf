resource "aws_instance" "roboshop" {
    for_each = var.instances
    ami = "ami-0f3c7d46464dc46464"
    instance_type = "t2.micro"
    tags = {
        Name = each.key
    }
}