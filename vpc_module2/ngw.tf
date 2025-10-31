resource "aws_nat_gateway" "PROD-VPC-ngw" {
  allocation_id = aws_eip.PRODVPC-eip.id
  subnet_id = aws_subnet.LB-subnet1.id
    tags = {
    name = "PROD VPC NAT Gateway"
  }

}