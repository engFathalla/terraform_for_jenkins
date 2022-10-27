resource "aws_instance" "Agent2" {
  ami                         = var.ami
  subnet_id                   = module.network.pub_sub_1_id
  instance_type               = var.instance_type
  key_name                    = "EC2 Toturial"
  vpc_security_group_ids      = [aws_security_group.Allow_SSH.id]
  associate_public_ip_address = true

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "8"
    delete_on_termination = true
  }

  tags = {
    Name = "Agent2"
  }
}