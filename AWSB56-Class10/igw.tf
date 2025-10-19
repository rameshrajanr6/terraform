resource "aws_internet_gateway" "AWSB56-igw" {
  vpc_id = aws_vpc.AWSB56-VPC1.id
  
  tags = {
    name = "AWSB56-internet gateway"
  }
}