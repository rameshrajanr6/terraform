resource "aws_route_table" "LB-rt" {
vpc_id = aws_vpc.PROD-VPC.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_internet_gateway.PROD-VPC-igw.id
}
tags = {
  Name="Loand Balancer Route table"
}
}

resource "aws_route_table" "private-rt" {
vpc_id = aws_vpc.PROD-VPC.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_nat_gateway.PROD-VPC-ngw.id
}
tags = {
  Name="private RT for web app and DB server"
}
}

resource "aws_route_table_association" "LB-rt-association1" {
  route_table_id = aws_route_table.LB-rt.id
  subnet_id =aws_subnet.LB-subnet1.id
}
   
  resource "aws_route_table_association" "LB-rt-association2" {
   route_table_id = aws_route_table.LB-rt.id
  subnet_id =aws_subnet.LB-subnet2.id
  }

  resource "aws_route_table_association" "LB-rt-association3" {
   route_table_id = aws_route_table.LB-rt.id
  subnet_id =aws_subnet.LB-subnet3.id
  
  }

resource "aws_route_table_association" "private-rt-association1" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.web-subnet1.id
}

resource "aws_route_table_association" "private-rt-association2" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.web-subnet2.id
}

resource "aws_route_table_association" "private-rt-association3" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.web-subnet3.id
}

resource "aws_route_table_association" "private-rt-association4" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.app-subnet1.id
}
resource "aws_route_table_association" "private-rt-association5" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.app-subnet2.id
}
resource "aws_route_table_association" "private-rt-association6" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.app-subnet3.id
}
resource "aws_route_table_association" "private-rt-association7" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.db-subnet1.id
}
resource "aws_route_table_association" "private-rt-association8" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.db-subnet2.id
}
resource "aws_route_table_association" "private-rt-association9" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.db-subnet3.id
}
