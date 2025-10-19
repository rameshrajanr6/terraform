resource "aws_internet_gateway" "dpt12-igw" {
  vpc_id = aws_vpc.dpt12-vpc.id
  
  tags = {
    name = "dpt12-internet gateway"
  }
}