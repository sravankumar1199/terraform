data "aws_ami" "ami_id"{
    most_recent = true
    owners = ["amazon"]   ### if privates accounts give [self] or ### [amazon] [or] we can give owner account id also ########

    filter {                       ### if we want mumbai region ami_id go and change in provide file like us-east-1 to ap-south-2 ###
        name = "name"              ### here you can give any name for your understanding ###
        values = ["talos-v1.8.2-us-east-1-amd64"]     ## how to find this ami names means open aws console and select ami option and copy ami_id and paste in AMI Public images ##
    }
}

output "ami_id" {
    value = data.aws_ami.ami_id   ##### here write entire name of file starting #######
}

data "aws_vpc" "default" {
    default = true   ####### fetching data of vpc and fetching data of cidr_blocks ###
}                   ## and creating security group with cidr block ####

output "vpc_info" {          ########### output comes like cidr_block "172.31.0.0/16"
    value = data.aws_vpc.default
}

resource "aws_security_group" "allow-http" {
    name = "security_group"      ## creating security group fetching data form cidr_blocks  ###
    vpc_id = data.aws_vpc.default.id   ## fetching data from top dafault vpc ##  
    description = "allowing all ports"

    ingress {
        description = "allowing only http port"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}