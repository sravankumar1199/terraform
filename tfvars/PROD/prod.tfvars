instances = {
    MongoDB-PROD = "t3.medium"          ### in for each format ##
    Mysql-PROD = "t3.medium"            ### MongoDB is each_key ##
    redis-PROD = "t2.micro"          
    rabbitmq-PROD = "t2.micro"
    catalogue-PROD = "t2.micro"
    payment-PROD = "t2.micro"
    shipping-PROD = "t2.micro"
    user-PROD = "t2.micro"
    cart-PROD = "t2.micro"
    web-PROD = "t2.micro"
}                               
sg_name = "allow_all"

## i want to install same instances with PROD in aws console that's why using tfvars ##
## PROD.tfvars means agian 10 instances installing in PROD directory in aws console ##
## here we are over writing values ##