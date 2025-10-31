resource "aws_internet_gateway" "PROD-VPC-igw" {
  vpc_id = aws_vpc.PROD-VPC.id
  
  tags = {
    name = "PROD-VPC-internet gateway"
  }
}