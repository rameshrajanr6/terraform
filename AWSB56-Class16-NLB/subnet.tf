resource "aws_subnet" "public-subnet1" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  availability_zone = var.public-subnet1-az
  cidr_block = var.public-subnet1-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet1"
  }
}
 
resource "aws_subnet" "public-subnet2" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  availability_zone = var.public-subnet2-az
  cidr_block = var.public-subnet2-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet2"
  }
}
 
 resource "aws_subnet" "public-subnet3" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  availability_zone = var.public-subnet3-az
  cidr_block = var.public-subnet3-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet3"
  }
}
 

resource "aws_subnet" "private-subnet1" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  availability_zone = var.private-subnet1-az
  cidr_block = var.private-subnet1-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet1"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  availability_zone = var.private-subnet2-az
  cidr_block = var.private-subnet2-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet2"
  }
}

resource "aws_subnet" "private-subnet3" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  availability_zone = var.private-subnet3-az
  cidr_block = var.private-subnet3-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet3"
  }
}