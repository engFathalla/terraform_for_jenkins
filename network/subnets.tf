resource "aws_subnet" "public-1-jenkins" {
  vpc_id     = aws_vpc.terraform_vpc.id
  availability_zone = var.AZ_1a
  cidr_block = "40.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-1-jenkins"
  }
}