resource "aws_nat_gateway" "AWSB56-ngw" {
  allocation_id = aws_eip.AWSB56-eip.id
  subnet_id = aws_subnet.public-subnet1.id
    tags = {
    name = "AWSB56 NAT Gateway"
  }

}