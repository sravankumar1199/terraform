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
sg_name = "allow_all" 

## i want to install same instances with PROD in aws console that's why using tfvars ##
## PROD.tfvars means again 10 instances installing in PROD directory in aws console ##
## here we are over writing values ##
## after completed pass command in terraform = terraform plan -var-file=DEV/dev/tfvars ## use inti or plan ##
## if i dont use this command terraform plan -var-file=DEV/dev/tfvars then download terraform.tfvars file and paste dev.tfvars data in terraform.tfvars file ##