resource "aws_route_table" "public-rt" {
vpc_id = aws_vpc.AWSB56-VPC1.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_internet_gateway.AWSB56-igw.id
}
tags = {
  Name="public RT"
}
}

resource "aws_route_table" "private-rt" {
vpc_id = aws_vpc.AWSB56-VPC1.id
route  {
    cidr_block="0.0.0.0/0"
    gateway_id=aws_nat_gateway.AWSB56-ngw.id
}
tags = {
  Name="private RT"
}
}

resource "aws_route_table_association" "AWSB56-public-rt-association1" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id =aws_subnet.public-subnet1.id
}
   
  resource "aws_route_table_association" "AWSB56-public-rt-association2" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id =aws_subnet.public-subnet2.id
  }

  resource "aws_route_table_association" "AWSB56-public-rt-association3" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id =aws_subnet.public-subnet3.id
  
  }

resource "aws_route_table_association" "AWSB56-private-rt-association1" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.private-subnet1.id
}

resource "aws_route_table_association" "AWSB56-private-rt-association2" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.private-subnet2.id
}

resource "aws_route_table_association" "AWSB56-private-rt-association3" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id =aws_subnet.private-subnet3.id
}


