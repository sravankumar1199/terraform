variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
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

variable "ingress" {
    type = list
    default = [     ## [] means inside the default we are writing syntax ###
        {
            from_port = 80
            to_port = 80
            description = "allowing port 80 from public"
            protocol = "HTTP"
            cidr_blocks = ["0.0.0.0/0"]
        },    #### , means after one syntax is completed then use , because multiple and same syntac that's why ###
        {   from_port = 443
            to_port = 443
            description = "allowing port 443 from public"
            protocol = "HTTPS"   ## protocols means like ssh,http,https ###
            cidr_blocks = ["0.0.0.0/0"]
        },  
        {   from_port = 22
            to_port = 22
            description = "allowing port 22 from public"
            protocol = "SSH"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}