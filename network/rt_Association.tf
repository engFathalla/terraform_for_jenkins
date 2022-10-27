resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public-1-jenkins.id
  route_table_id = aws_route_table.Public_RT_Terraform.id
}
