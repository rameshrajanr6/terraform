resource "aws_vpc" "dpt12-vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
        name="dpt12-vpc"
    }
  
}