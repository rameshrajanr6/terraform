output "vpc_id" {
  value = aws_vpc.AWSB56-VPC1.id

}

output "public-subnet1-id" {
  value = aws_subnet.public-subnet1.id
}
output "public-subnet2-id" {
  value = aws_subnet.public-subnet2.id
}
output "public-subnet3-id" {
  value = aws_subnet.public-subnet3.id
}

output "private-subnet1-id" {
  value = aws_subnet.private-subnet1.id
}
output "private-subnet2-id" {
  value = aws_subnet.private-subnet2.id
}
output "private-subnet3-id" {
  value = aws_subnet.private-subnet3.id
}

output "eip-value" {
  value= aws_eip.AWSB56-eip.id
}

