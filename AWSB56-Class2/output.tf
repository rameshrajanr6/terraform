output "vpc_id" {
  value = aws_vpc.dpt12-vpc.id

}

output "public-subnet-id" {
  value = aws_subnet.public-subnet.id
}

output "private-subnet-id" {
  value = aws_subnet.private-subnet.id
}

output "eip-value" {
  value= aws_eip.dpt12-eip.address
}

