output "vpc_id" {
  value = aws_vpc.terraform_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.terraform_vpc.cidr_block
  
}

output "pub_sub_1_id" {
  value = aws_subnet.public-1-jenkins.id
}