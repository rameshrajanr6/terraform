resource "aws_subnet" "firewall-subnet" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.public-subnet-az
  cidr_block = var.public-subnet-cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.dpt12-vpc.id
  availability_zone = var.private-subnet-az
  cidr_block = var.private-subnet-cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet"
  }
}