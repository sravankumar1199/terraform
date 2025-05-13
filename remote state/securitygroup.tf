resource "aws_security_group" "allow_all"{
    name = "roboshop"
    description = "allow HTTP HTTPS SSH"

    dynamic ingress {
        for_each = var.ingress          ## content give access to for_each systax ## 
        content { 
            description = ingress.value["description"]   ## description means variable file description refers here ###
            from_port = ingress.value.from_port   ### from_port = 80 ### from_port is key and 80 is value ###
            to_port = ingress.value.to_port
            protocol = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks
        }
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "roboshop"
    }
}

