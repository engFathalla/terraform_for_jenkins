resource "aws_security_group" "Allow_SSH" {
  name        = "Allowing-SSH"
  description = "Allow SSH"
  vpc_id      = module.network.vpc_id
  tags = {
    "Name" = "allowing-SSH"
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  


  }
}