provider "aws" { 
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "jump" {
  ami = "ami-08f3d892de259504d" 
  instance_type = "t2.micro"
  key_name="ec2_default"
  security_groups=["launch-wizard-4"]
}
