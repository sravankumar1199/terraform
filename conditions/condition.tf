resource "aws_instance" "conditions"{
    ami = var.ami_id                  ## ? means if or : means else ##  
    instance_type = var.instance_name == "Mongodb" ? "t3.micro" : "t2.micro"  
}                      ## if monogodb then t3.micro otherwise if cart so cart it installs t2.micro ##  