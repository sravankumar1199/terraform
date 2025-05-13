resource "aws_key_pair" "deployer" {
  key_name   = "sravan"
  public_key = file("${path.module}/keypair") ## here we refering file form key pair using file function its like a variable type but using function ##
} #### this systax creates key pair in aws console.

resource "aws_instance" "ec2creating"{
    ami = var.ami_id
    instance_type = "t2.micro"
}