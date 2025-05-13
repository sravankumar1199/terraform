variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"  ## in aws console ami id will change whenever new update ami id will change ##
}

variable "instances" {
    type = map
    default = {
        MongoDB = "t3.medium"          ### in for each format ##
        Mysql = "t3.medium"            ### MongoDB is each_key ##
        redis = "t2.micro"             ### t2.micro or t3.medium is each_value ##   
        rabbitmq = "t2.micro"
        catalogue = "t2.micro"
        payment = "t2.micro"
        shipping = "t2.micro"
        user = "t2.micro"
        cart = "t2.micro"
        web = "t2.micro"
    }
}

variable "sg_name" {
    default = "allow_all"
}




