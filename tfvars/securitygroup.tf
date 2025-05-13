resource "aws_security_group" "allow_all" {
    name = var.sg_name
    description = "allowing all ports"

    ingress {
        description = "allow all ports"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "allowing all ports"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

