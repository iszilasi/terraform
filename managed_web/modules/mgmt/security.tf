resource "aws_security_group" "allow_22" {
  name        = "allow_22"
  description = "Allow 22 from world"
  vpc_id      = "${var.AWS_DEFAULT_VPC}"

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
