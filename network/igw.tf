
resource "aws_internet_gateway" "igw-jenkins" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = "main-igw-jenkins"
  }
  depends_on = [aws_subnet.public-1-jenkins]
}