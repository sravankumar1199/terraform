resource "aws_instance" "looping"{
    count = 10  ## using count in loop concept at a time install multiple instances ##
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "Mongodb" || var.instance_names[count.index] =="mysql" ? "t3.medium" : "t2.micro"

    tags = {
        Name = var.instance_names[count.index]
    }  ## index element starts with 0 ## 
}

## like : mongo,cart,redis,rabbitmq,web,many more ##


##### instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ? "t3.micro" : "t2.micro" ##
 ### this systax uses for its creates for like only these mongodb,mysql install t3.micro remaining all install t2.micro ######
 ### count starts from 1 ### count.index starts from 0 ###########
### instance_type is giving condition type so we are giving type in instance type command like t2medium or t2micro
### count.index using for instance_names names starts from 0 to 10 that's why ####