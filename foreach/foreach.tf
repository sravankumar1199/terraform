resource "aws_instance" "roboshop" {
    for_each = var.instances  ### using for_each this is for each concept ###
    ami = var.ami_id   
    instance_type = each.value    #### each.value means t2.micro or t3.medium ###
    tags = {
        Name = each.key           ### each.key means MongoDB ####
    }
}