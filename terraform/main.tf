provider "aws" {
region = "ap-south-1"
access_key = "AKIAZJPQVG4AMTRUTBW3"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-06006e8b065b5bd46"
instance_type = "t2.micro"
key_name = "My_Key_Pair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "production_server"
}
}







