resource "aws_vpc" "PROD-VPC" {
    cidr_block = var.vpc1-cidr-block
    enable_dns_hostnames = true
    tags = {
        Name= var.vpc_name
    }
  
}