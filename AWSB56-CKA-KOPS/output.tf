output "vpc_id" {
  value = aws_vpc.dpt12-vpc.id

}

output "public-subnet-id" {
  value = aws_subnet.public_subnet1.id
}

#output "private-subnet-id" {
# value = aws_subnet.private_subnet1
#}

output "eip-value" {
  value= aws_eip.dpt12-eip.address
}

