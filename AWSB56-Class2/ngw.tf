resource "aws_nat_gateway" "dpt12-ngw" {
  allocation_id = aws_eip.dpt12-eip.id
  subnet_id = aws_subnet.public-subnet.id
  tags = {
    name = "dpt12 NAT Gateway"
  }

}