module "ec2" {
    source = "../copingfolder" ## what code folder coping you give name here like this "../copingfolder" 
    ami_id = "ami-0f3c7d46464dc46464"
    instance_type = "t2.micro"   
}   
## like this we are copy code from coping folder but passing values in mainfile.tf file ##