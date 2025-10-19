resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.public-subnet-az
  cidr_block = var.public-subnet-cidr
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.private-subnet-az
  cidr_block = var.private-subnet-cidr
  tags = {
    Name = "private-subnet"
  }
}