resource "aws_instance" "ec2"{
    ami = local.ami_id
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}

resource "aws_key_pair" "deployer"{
    key_name = "devops"
    public_key = local.public_key
}