resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.public-subnet-az1
  cidr_block = var.public-subnet-cidr1
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.public-subnet-az2
  cidr_block = var.public-subnet-cidr2
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet2"
  }
}

resource "aws_subnet" "public_subnet3" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.public-subnet-az3
  cidr_block = var.public-subnet-cidr3
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet3"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.private-subnet-az1
  cidr_block = var.private-subnet-cidr1
  map_public_ip_on_launch = true
  tags = {
    Name = "private-subnet"
  }
}