provider "aws" { 
  profile = "default"
  region = "us-east-1"
}


resource "aws_security_group" "allow_22" {
  name        = "allow_22"
  description = "Allow 22 from world"
  vpc_id      = "vpc-8237d5ff"

  ingress {
    description = "incoming 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_22"
  }
}


resource "aws_instance" "jump" {
  ami = "ami-08f3d892de259504d" 
  instance_type = "t2.micro"
  key_name="ec2_default"
  security_groups=["allow_22"]
}


