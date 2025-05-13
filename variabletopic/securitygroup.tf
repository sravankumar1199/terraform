resource "aws_security_group" "allow_all"{
    name = var.security_group   #### aws_security_group refering from variable.tf file but aws_security_group ##
    description = "allowing all ports"

    ingress {
        description = "allowing all ports"
        from_port = 0          ## form 0 and to 0 means starts 0 and ends 0 ports allowing all ports
        to_port = 0
        protocol = "tcp"
        cidr_blocks = var.sg_cidr
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"                  ### -1 means all portocols ###
        cidr_blocks = var.sg_cidr    
    }
}