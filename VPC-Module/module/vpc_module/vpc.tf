resource "aws_vpc" "AWSB56-VPC1" {
    cidr_block = var.vpc1-cidr-block
    enable_dns_hostnames = true
    tags = {
        Name= var.vpc_name
    }
  
}