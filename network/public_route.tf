resource "aws_route_table" "Public_RT_Terraform" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-jenkins.id
  }

  tags = {
    Name = "Public_RT_Terraform"
  }
}

