resource "aws_vpc" "dpt12-vpc" {
    cidr_block = var.vpc-cidr-block
    enable_dns_hostnames = true
    tags = {
        Name="dpt12-vpc"
    }
  
}