variable "ami_id"{
    type = string
    default = "ami-"ami-0b4f379183e5706b9"
}

variable "instance_type"{
    default = "t2.micro"
}

variable "security_group"{
    default = "allow-all"
}

variable "cidr_blocks"{
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags"{
    type = map
    default = {                     ## using map concept writing tags for ec2 instance ##
        Name = "roboshop"            ## we can easily identity the which project ## 
        Envirnment = "Dev"
        Terraform = "True"
        Project = "Roboshop"
        Component = "Mongodb"
    }
}