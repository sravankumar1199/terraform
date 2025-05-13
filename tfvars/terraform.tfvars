## this is default name of terraform.tfvars that will load automatically ##

instances = {
    MongoDB-DEV = "t3.medium"          ### in for each format ##
    Mysql-DEV = "t3.medium"            ### MongoDB is each_key ##
    redis-DEV = "t2.micro"               
    rabbitmq-DEV = "t2.micro"
    catalogue-DEV = "t2.micro"
    payment-DEV = "t2.micro"
    shipping-DEV = "t2.micro"
    user-DEV = "t2.micro"
    cart-DEV = "t2.micro"
    web-DEV = "t2.micro"
}
sg_name = "allow_all-PROD"


