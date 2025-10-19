resource "aws_vpc" "dpt12-vpc" {
    cidr_block = var.vpc-cidr-block
    tags = {
        Name="dpt12-vpc"
    }
  
}