resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = "us-east-1a"
  cidr_block = "192.168.1.0/24"
  tags = {
    name = "public-subnet"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = "us-east-1b"
  cidr_block = "192.168.2.0/24"
  tags = {
    name = "private-subnet"
  }
}