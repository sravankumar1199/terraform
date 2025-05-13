variable "instance_name"{
    default = "Cart"   ## if cart it will install t2.micro or mongodb it installs t3.micro ##
}                      ## both variable and condition names will same like mongodb then t3.micro install ##

variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}