locals{                                           ## locals topic same like varibles topic but in locals we can functions and conditions topic ##
    ami_id = "ami-0b4f379183e5706b9"              ## for example locals is varible file ## localtest is main file ##
    public_key = file("${path.module}/ec2key")    ## ami_id and public_key these are like given names ##
    instance_type = var.isPROD ? "t3.medium" : "t2.micro"
}   