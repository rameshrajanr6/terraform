resource "aws_route_table" "public-rt" {
vpc_id = aws_vpc.dpt12-vpc.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_internet_gateway.dpt12-igw.id
}
tags = {
  name="public RT"
}
}

resource "aws_route_table" "private-rt" {
vpc_id = aws_vpc.dpt12-vpc.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_nat_gateway.dpt12-ngw.id
}
tags = {
  name="private RT"
}
}

resource "aws_route_table_association" "dpt12-public-rt-association" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public-subnet.id
}

resource "aws_route_table_association" "dpt12-private-rt-association" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id = aws_subnet.private-subnet.id
}