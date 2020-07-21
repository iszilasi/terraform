resource "aws_instance" "jump" {
  ami = "${var.AWS_FREE_IMAGE}"
  instance_type = "t2.micro"
  key_name="ec2_default"
  security_groups=["allow_22"]
}

