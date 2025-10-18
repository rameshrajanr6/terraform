resource "aws_route_table" "public-rt" {
vpc_id = aws_vpc.dpt12-vpc.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_internet_gateway.dpt12-igw.id
}
tags = {
  Name="public RT"
}
}

resource "aws_route_table" "private-rt" {
vpc_id = aws_vpc.dpt12-vpc.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_nat_gateway.dpt12-ngw.id
}
tags = {
  Name="private RT"
}
}

resource "aws_route_table_association" "dpt12-public-rt-association1" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public_subnet1.id
 }

 resource "aws_route_table_association" "dpt12-public-rt-association2" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public_subnet2.id
 }

 resource "aws_route_table_association" "dpt12-public-rt-association3" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public_subnet3.id
 }

resource "aws_route_table_association" "dpt12-private-rt-association1" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id = aws_subnet.private_subnet1.id
}